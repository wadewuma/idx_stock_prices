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
use $stock\3_dta\3_stock_price_analyzed, clear

* 3. DROP VARIABLES IF THEY CONSIST ANY MISSING VALUES/KEEP ONLY NECESSARY VARIABLES
ds, has(type numeric)
quietly foreach x of varlist `r(varlist)'{
		sum `x'
		if r(N) != _N{
				drop `x'
			}
	}
	
* 4. COMPUTE RANKING BASED ON DAILY RETURNS, VOLATILITY, AND TRADING VOLUMES
bys ticker year: keep if _n == 1
keep ticker year returns_abv_avg_total returns_within2sd_total volume_abv_avg_total
foreach x of varlist returns_abv_avg_total returns_within2sd_total volume_abv_avg_total{
		forval year = 2008/2018{
				egen `x'r`year' = rank(`x') if year == `year', field
			}
	}
egen returns_abv_avg_rank = rowtotal(returns_abv_avg_totalr*)
egen returns_within2sd_rank = rowtotal(returns_within2sd_totalr*)
egen volume_abv_avg_rank = rowtotal(volume_abv_avg_totalr*)

keep ticker year *rank

quietly foreach x of varlist returns_abv_avg_rank returns_within2sd_rank volume_abv_avg_rank{
		bys ticker: egen `x'_avg = mean(`x')
	}


* 5. ELIMINATE ILLIQUID, NON-PROFITABLE, AND VOLATILE COMPANIES
bys ticker: keep if _n == 1
drop year
ds, has(type numeric)
format `r(varlist)' %9.0f
sum volume_abv_avg_rank_avg, det
keep if volume_abv_avg_rank_avg <= r(p5)
	sum returns_abv_avg_rank, det
	keep if returns_abv_avg_rank <= r(p50)
		sum returns_within2sd_rank, det
		keep if returns_within2sd_rank <= r(p50)
			sort volume_abv_avg_rank_avg

tempfile temp
saveold `temp', replace

* 6. EVALUATE SELECTED COMPANIES IN 2018
use $stock\3_dta\2_stock_price_clean, clear
keep ticker date adjclose
replace date = subinstr(date, "-", "/", .)
	gen date2 = date(date, "YMD")
	format date2 %td
	gen year = substr(date, 1, 4)
	keep if year == "2018"

replace ticker = substr(ticker, 1, 4)
bys ticker: replace adjclose = adjclose[_n-1] if adjclose == .
	merge m:1 ticker using `temp'
	keep if _m == 3

* 6.1. BY CREATING GRAPHS
egen tickerid = group(ticker)
sum tickerid
local tickerid = r(max)			
forval id = 1/`tickerid'{
		twoway line adjclose date2 if tickerid == `id' || ///
				qfit adjclose date2 if tickerid == `id'
		graph export $stock/4_graph/`id'.png, replace
	}

* 6.2. BY CHECKING WHETHER THEIR CURRENT PRICES ARE RELATIVELY CHEAP
egen dateid = group(date)
	sum dateid
	local datemin = r(min)
	local datemax = r(max)
		keep if dateid == `datemin' | dateid == `datemax'
		
bys ticker: gen ytd = (adjclose-adjclose[_n-1])/adjclose[_n-1]
keep if ytd < 0.05
sort ytd
keep ticker tickerid date adjclose ytd

* 7. SAVE DATA
compress
saveold $stock\3_dta\4_stock_price_analyzed2, replace
clear
exit
