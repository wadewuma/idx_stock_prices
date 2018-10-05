rm(list = ls())
cat("\014")

library(ggplot2)
library(dplyr)
library(tidyr)

setwd('C:\\Users\\lukman\\OneDrive\\5_Finance\\idx\\stock_price\\r')
df <- read.csv('idx_yahoo_finance.csv')

ticker <- substr(df$ticker,1,4)
date <- df$ref.date
adjclose <- df$price.adjusted
df <- data.frame(ticker, date, adjclose)

count <- df %>%
  add_count(df$ticker)
df$count <- count[,5]
df <- subset(df, df$count == 22)
df <- df[,1:3]

lag <- df %>%
  group_by(ticker) %>%
  mutate(lag(adjclose))
adjclose_lag <- lag[,4]
df <- cbind(df, adjclose_lag)

logreturns <- round(log(df$adjclose/df$`lag(adjclose)`), digits = 4)
df <- cbind(df[1:2], logreturns)
logavg <- df %>%
  group_by(ticker) %>%
  summarize(mean(logreturns, na.rm = TRUE))

logavg_wide <- df %>%
  group_by(date) %>%
  summarize(mean(logreturns, na.rm = TRUE))
df <- cbind(df, logavg_wide[,2])
colnames(df)[4] <- 'logreturns_by_date'
df['logreturns_abv_avg'] <- as.numeric(df$logreturns > df$logreturns_by_date)

logretabvavg <- df %>%
  group_by(ticker) %>%
  summarize(sum(logreturns_abv_avg == 1, na.rm = TRUE))
df <- merge(df, logretabvavg, by = 'ticker')
colnames(df)[6] <- 'logreturns_abv_avg_sum'

df_unique <- data.frame(df$ticker, df$logreturns_abv_avg_sum)
df_unique <- unique(df_unique)
df_unique['rank'] <- rank(-df_unique$df.logreturns_abv_avg_sum, ties.method = 'first')
df_unique <- subset(df_unique, rank <= 10)
colnames(df_unique)[1] <- 'ticker'
colnames(df_unique)[2] <- 'returns_abv_avg_sum'
colnames(df_unique)[3] <- 'rank'
head(df_unique)

ggplot(data = df_unique, aes(x = reorder(ticker, returns_abv_avg_sum), 
                             y = returns_abv_avg_sum))+
  geom_bar(stat = 'identity')+
  xlab("Company Names")+
  ylab("Sum of Above Average Returns")+
  coord_flip()+
  theme_bw()+
  scale_fill_grey()