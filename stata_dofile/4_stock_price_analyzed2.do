********************************************************************************
*
*		ANALYZE PUBLICLY LISTED COMPANIES IN INDONESIA STOCK EXCHANGE
*		SOURCE: YAHOO! FINANCE
*		PERIOD 2008/01/01 - PRESENT (DAILY)
*
********************************************************************************
clear

* 1. SET PATH
global stock "C:\stock"

* 2. LOAD DATA
use $stock\3_stock_price_analyzed, clear

* 3. DROP VARIABLES IF THEY CONSIST ANY MISSING VALUES/KEEP ONLY NECESSARY VARIABLES
ds, has(type numeric)
quietly foreach x of varlist `r(varlist)'{
		summarize `x'
		if r(N) != _N{
				drop `x'
			}
	}
	
* 4. COMPUTE RANKING BASED ON DAILY RETURNS, VOLATILITY, AND TRADING VOLUMES
bysort ticker year: keep if _n == 1
keep ticker year returns_abv_avg_total returns_within2sd_total volume_abv_avg_total
foreach x of varlist returns_abv_avg_total returns_within2sd_total volume_abv_avg_total{
		forvalues year = 2008/2018{
				egen `x'r`year' = rank(`x') if year == `year', field
			}
	}
egen returns_abv_avg_rank = rowtotal(returns_abv_avg_totalr*)
egen returns_within2sd_rank = rowtotal(returns_within2sd_totalr*)
egen volume_abv_avg_rank = rowtotal(volume_abv_avg_totalr*)

keep ticker year *rank

quietly foreach x of varlist returns_abv_avg_rank returns_within2sd_rank volume_abv_avg_rank{
		bysort ticker: egen `x'_avg = mean(`x')
	}


* 5. ELIMINATE ILLIQUID, NON-PROFITABLE, AND VOLATILE COMPANIES
bysort ticker: keep if _n == 1
drop year
ds, has(type numeric)
format `r(varlist)' %9.0f
summarize volume_abv_avg_rank_avg, det
keep if volume_abv_avg_rank_avg <= r(p5)
	summarize returns_abv_avg_rank, det
	keep if returns_abv_avg_rank <= r(p50)
		summarize returns_within2sd_rank, det
		keep if returns_within2sd_rank <= r(p50)
			sort volume_abv_avg_rank_avg

tempfile temp
saveold `temp', replace

* 6. EVALUATE SELECTED COMPANIES IN 2018
use $stock\3_dta\2_stock_price_clean, clear
keep ticker date adjclose
replace date = subinstr(date, "-", "/", .)
	generate date2 = date(date, "YMD")
	generate year = substr(date, 1, 4)
		format date2 %td
		keep if year == "2018"

replace ticker = substr(ticker, 1, 4)
bysort ticker: replace adjclose = adjclose[_n-1] if adjclose == .
	merge m:1 ticker using `temp'
	keep if _merge == 3

* 6.1. BY CREATING GRAPHS
egen tickerid = group(ticker)
summarize tickerid
local tickerid = r(max)			
forvalues id = 1/`tickerid'{
		twoway line adjclose date2 if tickerid == `id' || qfit adjclose date2 if tickerid == `id'
		graph export $stock/4_graph/`id'.png, replace
	}

* 6.2. BY CHECKING WHETHER THEIR CURRENT PRICES ARE RELATIVELY CHEAP
egen dateid = group(date)
	summarize dateid
	local datemin = r(min)
	local datemax = r(max)
		keep if dateid == `datemin' | dateid == `datemax'
		
bysort ticker: gen ytd = (adjclose-adjclose[_n-1])/adjclose[_n-1]
keep if ytd < 0.05
sort ytd
keep ticker tickerid date adjclose ytd

* 7. SAVE DATA
compress
saveold $stock\4_stock_price_analyzed2, replace
clear
exit
