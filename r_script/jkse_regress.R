#########################################################################################################################################
#
# create financial model based on yahoo! finance stock prices of companies listed in indonesia stock exchange
# the following code uses data set from file titled "dataset_r"
#
#########################################################################################################################################

#clear all
rm(list=ls())

# load package
# in case you haven't installed them yet, run following code:
# install.packages("readstata13")
# install.packages("tidyverse")
# and so on...
library(tidyverse)
library(plyr)
library(dplyr)
library(tidyr)
library(broom)

# set path
setwd("~:/your/path/here")

# load data
df <- read.csv("jkse_cleaned.csv")

 # create lag = t-1
df <- transform(df, adjclose = na.locf(adjclose))

# create vars: return(t1) and return(t-1)
df$change <- ave(df$adjclose, factor(df$code), FUN=function(x) c(NA,diff(x)))
df$perc_change <- log(df$adjclose/(df$adjclose-df$change))
df <- df %>% group_by(code) %>% mutate(perc_change_prev = dplyr::lag(perc_change, n = 1, default = NA))
                 
# keep 5 years period
df <- subset(df, df$yy >= 2013 & df$yy <= 2017)
                 
# drop NA that resulted from differencing
df <- na.omit(df)
                 
# create linear model: return(t1) = b0+b1*return(t-1)+e
# obtain regression coefficients and root mean squared errors (rmse)
by_code_time <- group_by(.data = df, code, yy, qq)
df_lm <- data.frame(do(by_code_time, tidy(lm(perc_change ~ perc_change_prev, data = .))))
df_lm <- subset(df_lm, term == "perc_change_prev", select = c(code, yy, qq, estimate, std.error))          
df_lm <- ddply(df_lm, .(code, yy), summarize, est_mu = mean(estimate), rmse_mu = sqrt(mean(std.error^2)))
df_lm_wide <- data.frame(reshape(df_lm, timevar = "yy", idvar = "code", direction = "wide"))

# create train/test data set
# test data                 
# regression coefficients and rmse in 2017                  
est_test <- subset(df_lm_wide, select = c(code, est_mu.2017))
rmse_test <- subset(df_lm_wide, select = c(code, rmse_mu.2017))  
df_lm_wide <- subset(df_lm_wide, select = -c(est_mu.2017, rmse_mu.2017))
                 
# train data
# average values of regression coefficients and rmse in 2013 - 2016                  
est_train <- data_frame(code = df_lm_wide$code, est_train = rowMeans(df_lm_wide[, grep("^est_mu.", names(df_lm_wide))]))
rmse_train <- data_frame(code = df_lm_wide$code, rmse_train = rowMeans(df_lm_wide[, grep("^rmse_mu.", names(df_lm_wide))]))
df_train <- merge(est_train,rmse_train,by = "code")
 
# merge train and test data set
df_test <- merge(est_test,rmse_test,by="code")
df_train_test <- merge(df_train,df_test,by="code")

# i consider the model is good if the coefficient signs are consistent between train and test,
# and when the rmse value in test data is smaller than the rmse in train data
df_train_test$est_good <- as.numeric((df_train_test$est_train < 0 & df_train_test$est_mu.2017 < 0) |
                                     (df_train_test$est_train > 0 & df_train_test$est_mu.2017 > 0) |
                                     (df_train_test$est_train == 0 & df_train_test$est_mu.2017 == 0))
df_train_test$rmse_good <- as.numeric((df_train_test$rmse_mu.2017 < df_train_test$rmse_train))
df_train_test <- subset(df_train_test, df_train_test$est_good == 1 & df_train_test$rmse_good == 1)
