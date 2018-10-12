## Analyzing Indonesian Publicly Listed Companies Using Yahoo! Finance Dataset in R

### Introduction
This repository aims to automate the process of collecting financial data through Yahoo! Finance in R. 

### Install Packages
First of all, we need to have R installed. Then we need to install packages below. Just remove the hashtag if you want to install them.
It will ignore the line code because probably you have already done it.
```
# install.packages(c('BatchGetSymbols', 'rvest' , 'xml2', 'ggplot2', 'plotly', 'dplyr', 'tidyr'))
library(BatchGetSymbols)
library(rvest)
library(xml2)
library(ggplot2)
library(plotly)
library(dplyr)
library(tidyr)
```

### Download Stock Price Data
We can obtain daily financial data through Yahoo! Finance for free. In fact, the dataset is already in a table format so the cleaning
process should be minimal. To automate the process, run 'idx_stock_prices.R'. Yahoo! Finance only provides us the ticker code,
stock prices (open, high, low, close, and adjusted close), and trading volume. To analyze the data, we may want to generate the daily
returns for each company by differencing the stock prices. You can do that by running 'idx_stock_prices2.R' and proceed to the analysis. 

### Create Graphs
Before proceeding into the analysis, you may want to explore the data by creating visualizations. I provide several examples below,
which you can do that by running 'idx_stock_prices2.R'. You may want to tweak to create more creative graphs.

### Graph 1
This graph shows us the daily distributions of log returns for each company since January 1, 2018 until present.
![Distributions%20of%20Daily%20Returns](https://github.com/ledwindra/idx_stock_prices/blob/master/r_scripts/Distributions%20of%20Daily%20Returns.png)

### Graph 2
This graph shows us companies that generate the highest numbers of daily returns.
![Sum%20of%20Above%20Average%20Returns](https://github.com/ledwindra/idx_stock_prices/blob/master/r_scripts/Sum%20of%20Above%20Average%20Returns.png)

### Graph 3
This graph shows us companies that have the highest and lowest cumulative daily log returns since January 1, 2018 until present.
![Cumulative%20Returns](https://github.com/ledwindra/idx_stock_prices/blob/master/r_scripts/Cumulative%20Returns.png)

### Conclusion
Individual investor may not be able to subscribe financial terminals. Yahoo! Finance provide us free dataset which I think suffices for
technical analysis. In fact, it can be done using free programming software such as R. I believe it can also be done using other free
software such as Python. Econometric method such as time series which may be useful to make investment decisions is beyond the scope
of this repository. Hence I do not provide any analysis nor investment advice here. Enjoy!
