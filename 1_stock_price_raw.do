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
gl stock "C:/Users/lukman/OneDrive/5_Finance/idx/stock_price/"

* 2. LOAD DATA
load daily stock price data
local csv: dir "$stock/1_csv/" files "*JK.csv"
			quietly foreach file of local csv{
				preserve
				import delimited "$stock/1_csv/`file'", clear
				generate ticker = "`file'"
				drop if _n == 1
				tempfile temp
				saveold "`temp'", replace
				restore
				append using "`temp'"
		}

* 3. SAVE DATA
compress
saveold $stock/3_dta/1_stock_price_raw, replace
clear
exit
