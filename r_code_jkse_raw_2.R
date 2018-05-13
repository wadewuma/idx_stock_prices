#clear all 
rm(list=ls())

# set path
setwd("your directory")

# load data
df = read.csv("df.raw.csv")[c('Date','Adj.Close','code')]

# generate vars
date = df$Date
adj_close = df$Adj.Close
  adj_close[adj_close == "null" ] = NA
  adj_close = as.numeric(adj_close)
code = sort(df$code, decreasing = F)

# create new data frame
df = data.frame(date,code,adj_close)
attach(df)

# replace missing values by previous values
df <- transform(df, adj_close = na.locf(adj_close))
str(df$adj_close) # no missing values
