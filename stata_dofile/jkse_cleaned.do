********************************************************************************
*	
*			PREDICT STOCK MARKET RETURNS USING YAHOO! FINANCE DATA
*			  (lukman.edwindra@gmail.com // github.com/ledwindra)
*								MAY 24, 2018					
*
********************************************************************************

clear 
set more off

gl path "~:/your/path/here"

use $path/jkse_raw, clear
	
drop *open *high *low jkse_close close *volume // keep necessary vars
bys code: g date_2 = date[_n-1]
g date_dup = (date == date_2)
drop if date_dup == 1 // check duplicates in date
drop date_2 date_dup
sort code date_num

*==============================================================================*
*
*						STEP 1: CREATE TIME PERIOD
*
*==============================================================================*


* YEARS + MONTHS
replace mm = "0"+mm if strlen(mm) < 2
g yymm = yy+"/"+mm, a(mm)
	
* QUARTERS
destring mm, g(mm_num)
g qq = ., a(yy)	
forv m = 3(3)12{
		replace qq = `m'/3 if mm_num > `m'-3 & mm_num <= `m'
	}
			
*==============================================================================*
*
*					STEP 2: GENERATE DAILY STOCK RETURNS
*
*==============================================================================*


* IMPUTE MISSING VALUES
foreach v of varlist *adjclose{
		replace `v' = . if `v' <= 0
		qui bys code yy mm: sum `v'
		qui bys code yy mm: replace `v' = r(mean) if `v' == .
		mdesc `v' // no missing values
	}
	
* GENERATE RETURNS
foreach v of varlist *adjclose{
		replace `v' = round(`v')
		bys code: g `v'_L1 = `v'[_n-1]
		replace `v'_L1 = `v' if `v'_L1 == .
		order `v'_L1, a(`v')
		bys code: g `v'_return = ln(`v'/`v'_L1)
		order `v'_return, a(`v'_L1)
		g `v'_return_L1 = `v'_return[_n-1], a(`v'_return)
	}

saveold $path/jkse_cleaned, replace
