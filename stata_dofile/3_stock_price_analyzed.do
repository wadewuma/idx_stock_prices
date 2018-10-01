********************************************************************************
*
*		ANALYZE PUBLICLY LISTED COMPANIES IN INDONESIA STOCK EXCHANGE
*		SOURCE: YAHOO! FINANCE
*		PERIOD 2008/01/01 - PRESENT (DAILY)
*
********************************************************************************
cls
clear

* 1. SET PATH
global stock "C:\Users\lukman\OneDrive\5_Finance\idx\stock_price"

* 2. LOAD DATA
use $stock\3_dta\2_stock_price_clean, clear

* 3. CLEAN DATA
replace ticker = substr(ticker, 1, 4)
gen year = substr(date, 1, 4)
destring year, replace
gen month = substr(date, 6, 2)
replace date = substr(date, -2, 2)
gen date2 = string(year)+"_"+month+"_"+date
order ticker year month date date2

* 4. GENERATE DAILY RETURNS (1ST ORDER DIFFERENCING)
bys ticker: replace adjclose = adjclose[_n-1] if adjclose == .
bys ticker year: gen returns = ln(adjclose/adjclose[_n-1]), a(adjclose)

* 5. COMPUTE AVERAGE DAILY RETURNS AND TRADING VOLUMES
gen returns_avg = ., a(returns)
gen returns_sd = ., a(returns_avg)
gen volume_avg = .
quietly forval year = 2008/2018{
		egen trading_day_`year' = group(date2) if year == `year'
		sum trading_day_`year' if year == `year'
		local trading_day = r(max)
		quietly forval n = 1/`trading_day'{
				sum returns if trading_day_`year' == `n'
				replace returns_avg = r(mean) if trading_day_`year' == `n' & returns_avg ==.
				replace returns_sd = r(sd) if trading_day_`year' == `n' & returns_sd == .
				sum volume if trading_day_`year' == `n'
				replace volume_avg = r(mean) if trading_day_`year' == `n' & volume_avg == .
					
			}
	}
	
* 6. GENERATE DUMMIES OF AVERAGE DAILY RETURNS, VOLATILITY, AND TRADING VOLUMES
gen returns_abv_avg = (returns > returns_avg)
gen returns_within2sd = (returns >= (returns_avg - (2*returns_sd)) & returns <= (returns_avg + (2*returns_sd))) 
gen volume_abv_avg = (volume > volume_avg)
forval year = 2008/2018{
		bys ticker: egen returns_avg_`year' = sum(returns_abv_avg) if year == `year'
		bys ticker: egen returns_within2sd_`year' = sum(returns_within2sd) if year == `year'
		bys ticker: egen volume_abv_avg_`year' = sum(volume_abv_avg) if year == `year'
	}
egen returns_abv_avg_total = rowtotal(returns_avg_*)
egen returns_within2sd_total = rowtotal(returns_within2sd_*)
egen volume_abv_avg_total = rowtotal(volume_abv_avg_*)

* 7. SAVE DATA
compress
saveold $stock\3_dta\3_stock_price_analyzed, replace
clear
exit
