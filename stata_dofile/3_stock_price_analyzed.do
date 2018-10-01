********************************************************************************
*
*		ANALYZE PUBLICLY LISTED COMPANIES IN INDONESIA STOCK EXCHANGE
*		SOURCE: YAHOO! FINANCE
*		PERIOD 2008/01/01 - PRESENT (DAILY)
*
********************************************************************************
clear

* 1. SET PATH
global stock "C:\stock_price"

* 2. LOAD DATA
use $stock\2_stock_price_clean, clear

* 3. CLEAN DATA
replace ticker = substr(ticker, 1, 4)
generate year = substr(date, 1, 4)
generate month = substr(date, 6, 2)
generate date2 = string(year)+"_"+month+"_"+date
	destring year, replace
	replace date = substr(date, -2, 2)
	order ticker year month date date2

* 4. GENERATE DAILY RETURNS (1ST ORDER DIFFERENCING)
bysort ticker: replace adjclose = adjclose[_n-1] if adjclose == .
bysort ticker year: generate returns = ln(adjclose/adjclose[_n-1]), after(adjclose)

* 5. COMPUTE AVERAGE DAILY RETURNS AND TRADING VOLUMES
generate returns_avg = ., after(returns)
generate returns_sd = ., after(returns_avg)
generate volume_avg = .
quietly forval year = 2008/2018{
		egen trading_day_`year' = group(date2) if year == `year'
		summarize trading_day_`year' if year == `year'
		local trading_day = r(max)
		quietly forvalues n = 1/`trading_day'{
				summarize returns if trading_day_`year' == `n'
				replace returns_avg = r(mean) if trading_day_`year' == `n' & returns_avg ==.
				replace returns_sd = r(sd) if trading_day_`year' == `n' & returns_sd == .
				summarize volume if trading_day_`year' == `n'
				replace volume_avg = r(mean) if trading_day_`year' == `n' & volume_avg == .	
			}
	}
	
* 6. GENERATE DUMMIES OF AVERAGE DAILY RETURNS, VOLATILITY, AND TRADING VOLUMES
generate returns_abv_avg = (returns > returns_avg)
generate returns_within2sd = (returns >= (returns_avg - (2*returns_sd)) & returns <= (returns_avg + (2*returns_sd))) 
generate volume_abv_avg = (volume > volume_avg)
forvalues year = 2008/2018{
		bysort ticker: egen returns_avg_`year' = summarize(returns_abv_avg) if year == `year'
		bysort ticker: egen returns_within2sd_`year' = summarize(returns_within2sd) if year == `year'
		bysort ticker: egen volume_abv_avg_`year' = summarize(volume_abv_avg) if year == `year'
	}
egen returns_abv_avg_total = rowtotal(returns_avg_*)
egen returns_within2sd_total = rowtotal(returns_within2sd_*)
egen volume_abv_avg_total = rowtotal(volume_abv_avg_*)

* 7. SAVE DATA
compress
saveold $stock\3_stock_price_analyzed, replace
clear
exit
