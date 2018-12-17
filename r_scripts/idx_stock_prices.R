# setwd('C:\\your\\path\\here')

if(!require(BatchGetSymbols))
  install.packages('BatchGetSymbols')
if(!require(rvest))
  install.packages('rvest')
if(!require(xml2))
  install.packages('xml2')

library(BatchGetSymbols)
library(rvest)
library(xml2)

company_list <- read.csv('listed_companies.csv', header = FALSE)
head(company_list)
file_name <- as.character(company_list$V1)
head(file_name)

n <- as.numeric(as.Date(Sys.Date())-as.Date("2018-01-01"))
first_date <- Sys.Date()-n
last_date <- Sys.Date()
df <- BatchGetSymbols(tickers = file_name,
                      first.date = first_date,
                      last.date = last_date)
df = data.frame(df$df.tickers)
write.csv(df, file = 'idx_stock_prices.csv' ,row.names = FALSE)
