# Analyze Indonesia's Stock Price Data from Yahoo! Finance

This repository aims to analyze stock price pattern using Yahoo! Finance data. There are two scripts, Stata do-files and R scripts.

Following are steps to use this repository:

1. Extract dataset_raw to get all stock prices data in .csv format

2. To clean the data set, I use Stata. Open folder stata_dofile, then run following codes:
  2.1. jkse_raw.do to get jkse_raw.csv
  2.2. jkse_cleaned.do to get jkse_cleaned.csv
  
3. To analyze the stock price pattern, we can use both jkse_regress.do and jkse_regress.R. In respective files,
I have provided the steps taken to get the pattern.

This is not an investment advice, and errors are my own.
