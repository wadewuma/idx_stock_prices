  #clear all 
  rm(list=ls())
  
  # load package
  library(readstata13)
  library(tidyverse)
  library(plyr)
  library(dplyr)
  library(tidyr)
  library(broom)
  
  # set path
  setwd("C:/Users/lukman/OneDrive/5_Finance/2_Yahoo/jkse")
  
  df <- read.dta13("jkse_cleaned.dta") # load data
  
  df <- subset(df, select = c(date, yy, qq, code, adjclose)) # keep vars
  df <- transform(df, adjclose = na.locf(adjclose)) # create lag = t-1
  
  # create vars: daily return
  df$change <- ave(df$adjclose, factor(df$code), FUN=function(x) c(NA,diff(x)))
  df$perc_change <- log(df$adjclose/(df$adjclose-df$change))
  df <- df %>%
        group_by(code) %>%
        mutate(perc_change_prev = dplyr::lag(perc_change, n = 1, default = NA))
  
  df <- subset(df, df$yy >= 2013 & df$yy <= 2017)
  df <- na.omit(df)
  
  # regress return with previous return
  # obtain coef & std errors
  by_code_time <- group_by(.data = df, code, yy, qq)
  df_lm <- data.frame(do(by_code_time,
                      tidy(lm(perc_change ~ perc_change_prev,
                              data = .))))
  # remove intercept
  df_lm <- subset(df_lm, term == "perc_change_prev",
                 select = c(code, yy, qq, estimate, std.error))
  df_lm <- ddply(df_lm, .(code, yy), summarize,
                   est_mu = mean(estimate),
                   rmse_mu = sqrt(mean(std.error^2)))
  
  df_lm_wide <- data.frame(reshape(df_lm,
                                   timevar = "yy",
                                   idvar = "code",
                                   direction = "wide"))
  
  
  est_test <- subset(df_lm_wide, select = c(code, est_mu.2017))
  rmse_test <- subset(df_lm_wide, select = c(code, rmse_mu.2017))
  
  df_lm_wide <- subset(df_lm_wide, select = -c(est_mu.2017, rmse_mu.2017))
  
  est_train <- data_frame(code = df_lm_wide$code,
                     est_train = rowMeans(df_lm_wide[, grep("^est_mu.", names(df_lm_wide))]))
  rmse_train <- data_frame(code = df_lm_wide$code,
                         rmse_train = rowMeans(df_lm_wide[, grep("^rmse_mu.", names(df_lm_wide))]))
  
  df_train <- merge(est_train,rmse_train,by = "code")
  df_test <- merge(est_test,rmse_test,by="code")
  df_train_test <- merge(df_train,df_test,by="code")
  
  df_train_test$est_good <- as.numeric((df_train_test$est_train < 0 & df_train_test$est_mu.2017 < 0) |
                            (df_train_test$est_train > 0 & df_train_test$est_mu.2017 > 0) |
                            (df_train_test$est_train == 0 & df_train_test$est_mu.2017 == 0))
  
  df_train_test$rmse_good <- as.numeric((df_train_test$rmse_mu.2017 < df_train_test$rmse_train))
  df_train_test <- subset(df_train_test, df_train_test$est_good == 1 & df_train_test$rmse_good == 1)