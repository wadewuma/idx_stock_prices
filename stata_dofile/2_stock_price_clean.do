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
gl stock "C:\Users\lukman\OneDrive\5_Finance\idx\stock_price"

* 2. LOAD DATA
use $stock\3_dta\1_stock_price_raw, clear

* 3. CLEAN DATA
* 3.1. REPLACE VALUE AS MISSING IF VARIABLE VALUES ARE NULL
forval n = 2/7{
		replace v`n' = "" if v`n' == "null"
	}
* 3.2. FORMAT VARIABLES AS NUMERIC
destring v2-v7, replace
format v2-v7 %20.0f	
	replace date = v1 if date == ""
	replace open = v2 if open == .
	replace high = v3 if high == .
	replace low = v4 if low == .
	replace close = v5 if close == .
	replace adjclose = v6 if adjclose == .
	replace volume = v7 if volume == .
		drop v1-v7

* 4. SAVE DATA
compress
saveold $stock\3_dta\2_stock_price_clean, replace
clear
exit
