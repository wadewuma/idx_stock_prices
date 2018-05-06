********************************************************************************
*									
*	
*	Data source	: Yahoo! Finance
*	Author		: lukman.edwindra@gmail.com
*	Date updated	: May 3, 2018
*
*********************************************************************************
clear 
set more off

* set path
gl jkse "" // your folder here

* load jkse data
use $jkse/3_dta/jkse_raw, clear
	drop *open *high *low jkse_close close *volume // keep necessary vars
	bys code: g date_2 = date[_n-1]
		g date_dup = (date == date_2)
			drop if date_dup == 1 // check duplicates in date
			drop date_2 date_dup
				sort code date_num

* drop stocks which traded above 5k in last trading day in the data set
* this is merely my preference, you can just keep it

/*
bys code: g latest_price_abv5k_a = (adjclose >= 5000) if _n == _N
bys code: egen latest_price_abv5k_b = sum(latest_price_abv5k_a)
	drop if latest_price_abv5k_b == 1
		drop latest_*
*/

* create years+months
replace mm = "0"+mm if strlen(mm) < 2
	g yymm = yy+"/"+mm, a(mm)
	
* create quarters				
destring mm, g(mm_num)
	g qq = ., a(yy)	
		forv m = 3(3)12{
				replace qq = `m'/3 if mm_num > `m'-3 & mm_num <= `m'
			}
			
* impute missing values
foreach v of varlist *adjclose{
		replace `v' = . if `v' <= 0
		qui bys code yy mm: sum `v'
		qui bys code yy mm: replace `v' = r(mean) if `v' == .
			mdesc `v' // no missing values
	}
	
* generate returns
* daily
foreach v of varlist *adjclose{
		replace `v' = round(`v')
			bys code: g `v'_L1 = `v'[_n-1]
				replace `v'_L1 = `v' if `v'_L1 == .
					order `v'_L1, a(`v')
			bys code: g `v'_return = ln(`v'/`v'_L1)
				order `v'_return, a(`v'_L1)
					g `v'_return_L1 = `v'_return[_n-1], a(`v'_return)
	}

* monthly
bys code yymm: egen adjclose_return_mm = sum(adjclose_return)

* quarterly

* save data set
saveold $jkse/3_dta/jkse_cleaned, replace
export delimited $jkse/jkse_cleaned, replace
