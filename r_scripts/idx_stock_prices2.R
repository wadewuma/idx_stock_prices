rm(list = ls())
cat("\014")
setwd('C:\\Users\\lukman\\OneDrive\\5_Finance\\idx\\stock_price\\r')

library(ggplot2)
library(plotly)
library(dplyr)
library(tidyr)

df <- read.csv('idx_stock_prices2.csv')

################################################################################
#
# STEP 1: SET UP VARIABLES
#
################################################################################
ticker <- substr(df$ticker,1,4)
date <- df$ref.date
adjclose <- df$price.adjusted
volume <- df$volume
df <- data.frame(ticker, date, adjclose, volume)

# make a balanced dataset
count <- df %>%
  add_count(df$ticker)
df['obs'] <- count$n
df <- subset(df, df$obs == max(df$obs))

# generate lag variable (lag = 1 day)
lag <- df %>%
  group_by(ticker) %>%
  mutate(lag(adjclose))
df['adjclose_lag'] <- lag$`lag(adjclose)`

# generate daily log returns
df['logreturns'] <- round(log(df$adjclose/df$adjclose_lag), digits = 4)

# generate average log returns by date
bydate <- df %>%
  group_by(date) %>%
  summarize(logretavg = mean(logreturns, na.rm = TRUE),
            volumeavg = mean(volume, na.rm = TRUE))
df['logreturns_avg'] <- bydate$logretavg
df['volumeavg'] <- bydate$volumeavg

# create dummies where a value of 1 is assigned if:
# 1. log returns of company C in date D
# 2. daily trading volume of company C in date D
# are beyond average among all companies
df['returns_abv_avg'] <- as.numeric(df$logreturns > df$logreturns_avg)
df['volume_abv_avg'] <- as.numeric(df$volume > df$volumeavg)

# sum total days where company C has:
# 1. above average log returns
# 2. above average trading volume
# in date D
abv_avg_sum <- df %>%
  group_by(ticker) %>%
  summarize(logretabvavgsum = sum(returns_abv_avg == 1, na.rm = TRUE),
            volabvavgsum = sum(volume_abv_avg == 1, na.rm = TRUE))
df <- merge(df, abv_avg_sum, by = 'ticker')
colnames(df)[12] <- 'returns_abv_avg_sum'
colnames(df)[13] <- 'volume_abv_avg_sum'

# rank companies which have the highest numbers of daily returns and trading volume 
# remove duplicates
df_unique <- unique(data.frame(df$ticker, df$returns_abv_avg_sum, df$volume_abv_avg_sum))
df_unique['returns_rank'] <- rank(-df_unique$df.returns_abv_avg_sum, ties.method = 'first')
df_unique['volume_rank'] <- rank(-df_unique$df.volume_abv_avg_sum, ties.method = 'first')

colnames(df_unique)[1] <- 'ticker'
colnames(df_unique)[2] <- 'returns_abv_avg_sum'
colnames(df_unique)[3] <- 'volume_abv_avg_sum'
colnames(df_unique)[4] <- 'returns_rank'
colnames(df_unique)[5] <- 'volume_rank'
head(df_unique)

# cumulative returns
head(df)
df_cumul <- select(df, ticker, date, logreturns)
head(df_cumul)
logreturns_cumul <- df_cumul %>%
  group_by(ticker) %>%
  summarize(logretcumul = sum(logreturns, na.rm = TRUE))
df_cumul <- logreturns_cumul
df_cumul['cumul_rank'] <- rank(-df_cumul$logretcumul, ties.method = 'first')
write.csv(df_cumul, 'idx_cumulative_returns.csv', row.names = FALSE)

################################################################################
#
# STEP 2: CREATE GRAPHS
#
################################################################################
# companies with the highest numbers of daily returns above average
df_returns_plot <- subset(df_unique, returns_rank <= 10)
returns_plot <- ggplot(data = df_returns_plot, aes(x = reorder(ticker, returns_abv_avg_sum), 
                                         y = returns_abv_avg_sum))
returns_plot+
  geom_bar(stat = 'identity')+
  xlab("Company Names")+
  ylab("Sum of Above Average Returns")+
  coord_flip()+ # make it horizontal
  theme_bw()+ # change theme
  scale_fill_grey()
ggsave('Sum of Above Average Returns.png', width = 7.5, height = 5)

# most liquid companies measured by daily trading volume
df_volume_plot <- subset(df_unique, volume_rank <= 10)
volume_plot <- ggplot(data = df_volume_plot, aes(x = reorder(ticker, volume_abv_avg_sum), 
                                            y = volume_abv_avg_sum))
volume_plot+
  geom_bar(stat = 'identity')+
  xlab("Company Names")+
  ylab("Most Liquid Companies (by Daily Trading Volume)")+
  coord_flip()+ # make it horizontal
  theme_bw()+ # change theme
  scale_fill_grey()
ggsave('Most Liquid Companies.png', width = 7.5, height = 5)

# top and bottom 10 profitable companies by cumulative returns
df_cumul_plot <- subset(df_cumul,
                        cumul_rank <= (min(df_cumul$cumul_rank)+9) |
                          cumul_rank >= (max(df_cumul$cumul_rank)-9))

cumul_plot <- ggplot(data = df_cumul_plot, aes(x = reorder(ticker, logretcumul), 
                                                 y = logretcumul))
cumul_plot+
  geom_bar(stat = 'identity')+
  xlab("Company Names")+
  ylab("Cumulative Returns")+
  coord_flip()+ # make it horizontal
  theme_bw()+ # change theme
  scale_fill_grey()+
  scale_y_continuous(labels = c('-200%', '-100%', '0%', '100%', '200%'))
ggsave('Cumulative Returns.png', width = 7.5, height = 5)

# average daily returns density plot
density_plot <- ggplot(data = bydate, aes(x = logretavg))
p <- density_plot+
  stat_density(na.rm = TRUE, adjust = 2, geom = 'line', color = 'blue')+
  ggtitle("Distributions of Average Daily Returns (YTD)")+
  xlab("")+
  theme_bw()+
  scale_x_continuous(labels = c('-3%', '2%', '1%', '0%', '1%'))
ggplotly(p)
ggsave('Distributions of Daily Returns.png', width = 7.5, height = 5)
