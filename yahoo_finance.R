#clear all
rm(list=ls())

library(zoo)
library(tidyverse)
library(plyr)
library(dplyr)
library(tidyr)
library(broom)

setwd("C:/Users/lukman/OneDrive/5_Finance/2_Yahoo/jkse/1_csv")

# create a list of file names
data.files = list.files(pattern = "*.csv")

# read all csv data in the directory
data <- lapply(data.files, function(x) read.csv(x))

# create variable that contains ticker ticker for each company
for(i in 1:length(data.files)){
    data[[i]] <- data.frame(data[[i]], ticker = data.files[i])
}

# append all csv data into a single data set
master <- do.call(rbind,data)

# set time period
master$year <- as.numeric(substr(master$Date,1,4))
master$month <- as.numeric(substr(master$Date,6,7))
master$quarter <- ifelse(master$month >= 1 & master$month <= 3, 1,
                         ifelse((master$month >= 4) & (master$month <= 6), 2,
                                ifelse((master$month >= 7) & (master$month <= 9), 3,
                                       4)))
# rename variables
master$date <- master$Date
master$Adj.Close[master$Adj.Close == "null"] <- NA
master$adjclose <- as.numeric(levels(master$Adj.Close))[master$Adj.Close]

# keep necessary variables
df <- subset(master, select = c(date, year, month, quarter, adjclose, ticker))

# change missing values with previous values
df <- transform(df, adjclose = na.locf(adjclose))

# create vars: return(t1) and return(t-1)
df$change <- ave(df$adjclose, factor(df$ticker), FUN=function(x) c(NA,diff(x)))
df$perc_change <- log(df$adjclose/(df$adjclose-df$change))
df <- df %>% group_by(ticker) %>% mutate(perc_change_prev = dplyr::lag(perc_change, n = 1, default = NA))

# keep 5 years period
df <- subset(df, df$year >= 2013 & df$year <= 2017)

# drop NA that resulted from differencing
df <- na.omit(df)

# create linear model: return(t1) = b0+b1*return(t-1)+e
# obtain regression coefficients and root mean squared errors (rmse)
by_ticker_time <- group_by(.data = df, ticker, year, quarter)
df_lm <- data.frame(do(by_ticker_time, tidy(lm(perc_change ~ perc_change_prev, data = .))))
df_lm <- subset(df_lm, term == "perc_change_prev", select = c(ticker, year, quarter, estimate, std.error))          
df_lm <- ddply(df_lm, .(ticker, year), summarize, est_mu = mean(estimate), rmse_mu = sqrt(mean(std.error^2)))
df_lm_wide <- data.frame(reshape(df_lm, timevar = "year", idvar = "ticker", direction = "wide"))

# create train/test data set
# test data                 
# regression coefficients and rmse in 2017                  
est_test <- subset(df_lm_wide, select = c(ticker, est_mu.2017))
rmse_test <- subset(df_lm_wide, select = c(ticker, rmse_mu.2017))  
df_lm_wide <- subset(df_lm_wide, select = -c(est_mu.2017, rmse_mu.2017))

# train data
# average values of regression coefficients and rmse in 2013 - 2016                  
est_train <- data_frame(ticker = df_lm_wide$ticker, est_train = rowMeans(df_lm_wide[, grep("^est_mu.", names(df_lm_wide))]))
rmse_train <- data_frame(ticker = df_lm_wide$ticker, rmse_train = rowMeans(df_lm_wide[, grep("^rmse_mu.", names(df_lm_wide))]))
df_train <- merge(est_train,rmse_train,by = "ticker")

# merge train and test data set
df_test <- merge(est_test,rmse_test,by="ticker")
df_train_test <- merge(df_train,df_test,by="ticker")

# i consider the model is good if the coefficient signs are consistent between train and test,
# and when the rmse value in test data is smaller than the rmse in train data
df_train_test$est_good <- as.numeric((df_train_test$est_train < 0 & df_train_test$est_mu.2017 < 0) |
                                       (df_train_test$est_train > 0 & df_train_test$est_mu.2017 > 0) |
                                       (df_train_test$est_train == 0 & df_train_test$est_mu.2017 == 0))
df_train_test$rmse_good <- as.numeric((df_train_test$rmse_mu.2017 < df_train_test$rmse_train))
df_train_test <- subset(df_train_test, df_train_test$est_good == 1 & df_train_test$rmse_good == 1)