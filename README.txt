DISCLAIMER: This is not an investment aside. I have not tested this model
in real life, although I already play in the stock market. In addition,
it is not complete yet and will be continuously updated.


IDEA
As a person, I don't want my earned money to be beaten by inflation. In
Indonesia, the Indonesian Central Bank targets inflation within +/- 4%,
so in one year I have to set aside my money which gives return above that.
One of the financial instruments is stocks.

Unfortunately, playing in the stock market is risky and probably requires time
and money to gather the data. Although there are mutual funds that allocate
the money in the stock market, it seems boring and the expenses may be higher
than the returns.

So I decide to create an algorithm that picks the publicly traded companies
that require me not reading each company's financial statements for N period
of time; and not reading news that comprise of security analysts' recommendation,
which for me is not trustworthy.

HOW?
Currently, there are about 500 publicly traded companies in Indonesia.
I gather daily stock prices from Yahoo! Finance from 2008 - current (2018).
Google Chrome extension allows us to extract multiple URLs, meaning I don't
have to click each company's price data (check folder "csv").

The workflow as follows:
1. Open jkse_raw do-file, which cleans all the csv data, into a single data
set
2. Open jkse_analyzed_201`n', for n = 2012, 2013, ..., 2017. I omit 2008 - 
2011 because there would be many companies that were not already listed in
those years, hence losing some potential companies. 2018 is not used since
the year has not ended yet
3. Open jkse_analyzed_all, which basically aims to check all the do-files
work fine

The analysis that I am thinking is as follows:
1. The data set is stratified by company's code, year, and quarter;
2. I want to know whether the stock return is determined by previous returns,
by company in each year and each quarter because there might be seasonality
in the price trends;
3. After running regression by year and quarter, I would like to know
whether my model contains high error rate or not, hence I obtain the
root mean squared error (rmse);
4. The rmse is then averaged by quarter, for example in 2012, I average
rmse in q1 - q4, and so on;
5. To test whether my model works, I classify the data into training and test,
where training is the data in year 2012 - 2016, and the test is rmse in 2017.
If rmse in test is higher than the training, then it seems my model doesn't
work well, so I pick which training_rmse is lower than test_rmse
6. Finally, I will pick the companies which have returns that are determined
by previous returns, both positively and negatively, by looking at the coefficients.
So I can diversify the companies that go in multiple directions, considering
future prices are uncertain and perhaps can not be perfectly forecasted