# install.package(c('ggplot2', 'dplyr', 'tidyr'))
library(ggplot2)
library(dplyr)
library(tidyr)

# set directory
setwd('C:\\your\\path\\here')

# load data from previous R script 
df <- read.csv('idx_yahoo_finance.csv')

################################################################################
#
# STEP 1: DAILY RETURNS
#
################################################################################
ticker <- substr(df$ticker,1,4)
date <- df$ref.date
adjclose <- df$price.adjusted
df <- data.frame(ticker, date, adjclose)

# make a balanced dataset
count <- df %>%
  add_count(df$ticker)
df$count <- count[,5]
df <- subset(df, df$count == 22)
df <- df[,1:3]

# generate lag variable (lag = 1 day)
lag <- df %>%
  group_by(ticker) %>%
  mutate(lag(adjclose))
adjclose_lag <- lag[,4]
df <- cbind(df, adjclose_lag)

# generate daily log returns
logreturns <- round(log(df$adjclose/df$`lag(adjclose)`), digits = 4)
df <- cbind(df[1:2], logreturns)

# generate average log returns by ticker 
logavg_by_ticker <- df %>%
  group_by(ticker) %>%
  summarize(mean(logreturns, na.rm = TRUE))

# generate average log returns by date
logavg_by_date <- df %>%
  group_by(date) %>%
  summarize(mean(logreturns, na.rm = TRUE))
df <- cbind(df, logavg_by_date[,2])
colnames(df)[4] <- 'logavg_by_date'

# create a dummy where a value of 1 is assigned if log returns of company C in date D is above average log returns in D
df['returns_abv_avg'] <- as.numeric(df$logreturns > df$logavg_by_date)

# sum total days where company C has above average log returns in date D
returns_abv_avg_sum <- df %>%
  group_by(ticker) %>%
  summarize(sum(returns_abv_avg == 1, na.rm = TRUE))
df <- merge(df, returns_abv_avg_sum, by = 'ticker')
colnames(df)[6] <- 'returns_abv_avg_sum'

# rank companies which have the highest numbers of daily returns above average
# remove duplicates
df_unique <- data.frame(df$ticker, df$returns_abv_avg_sum)
df_unique <- unique(df_unique)
df_unique['rank'] <- rank(-df_unique$df.returns_abv_avg_sum, ties.method = 'first')
df_unique <- subset(df_unique, rank <= 10)
colnames(df_unique)[1] <- 'ticker'
colnames(df_unique)[2] <- 'returns_abv_avg_sum'
colnames(df_unique)[3] <- 'rank'
head(df_unique)

################################################################################
#
# STEP 2: CREATE GRAPHS
#
################################################################################
# plot a bar chart to see the top 10 companies which have the highest numbers of daily returns above average
# create a ggplot object
bar_plot <- ggplot(data = df_unique, aes(x = reorder(ticker, returns_abv_avg_sum), 
                             y = returns_abv_avg_sum))
# create a bar plot
bar_plot+
  geom_bar(stat = 'identity')+
  xlab("Company Names")+
  ylab("Sum of Above Average Returns")+
  coord_flip()+ # make it horizontal
  theme_bw()+ # change theme
  scale_fill_grey()
