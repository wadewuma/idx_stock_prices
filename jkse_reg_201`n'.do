********************************************************************************
*									
*	
*	Data source	" Yahoo! Finance
*	Author		: lukman.edwindra@gmail.com
*	Date updated	: May 3, 2018
*
*********************************************************************************
clear 
set more off

* set path
gl jkse "" // your working directory

* load jkse data
use $jkse/dta/jkse_reg_raw, clear

* balancing observations 
keep if yy == "2017"
bys code: g N = _N
	qui sum N, det
		drop if N < r(max) 
			local Nmax = r(max)

egen code_id = group(code)
	order code_id, a(code)
	
* regress: obtain coef and rmse
* coef
g beta = .
forv n = 1/`Nmax'{
	forval m = 1/4{
			qui reg adjclose_return adjclose_return_L1 if code_id == `n' & qq == `m'
				g beta_`n'_2017_`m' = _b[adjclose_return_L1]
					qui replace beta = beta_`n'_2017_`m' if code_id == `n' & qq == `m'
		}
	}
			drop beta_*

* rmse
g rmse = .			
forval n = 1/`Nmax'{	
	forval m = 1/4{
			qui reg adjclose_return adjclose_return_L1 if code_id == `n' & qq == `m'
				g rmse_`n'_2017_`m' = e(rmse)
					qui replace rmse = rmse_`n'_2017_`m' if code_id == `n' & qq == `m'
		}
	}
			drop rmse_*

			
* regress adjclose_return with inflation: obtain coef and rmse
* coef
g b_retinf = .
forv n = 1/`Nmax'{
	forval m = 1/4{
			qui reg adjclose_return inflation if code_id == `n' & qq == `m'
				g b_retinf_`n'_2017_`m' = _b[inflation]
					qui replace b_retinf = b_retinf_`n'_2017_`m' if code_id == `n' & qq == `m'
		}
	}
			drop b_retinf_*

* rmse
g rmse_retinf = .			
forval n = 1/`Nmax'{	
	forval m = 1/4{
			qui reg adjclose_return inflation if code_id == `n' & qq == `m'
				g rmse_retinf_`n'_2017_`m' = e(rmse)
					qui replace rmse_retinf = rmse_retinf_`n'_2017_`m' if code_id == `n' & qq == `m'
		}
	}
			drop rmse_retinf_*
			
bys code: g return_zero_dum = (adjclose_return == 0)
bys code: egen return_zero = sum(return_zero_dum)
	sum return_zero, det
	drop if return_zero >= r(mean)+(2*r(sd))
	
bys code: keep if _n == 1	

* save data
saveold $jkse/jkse_analyzed_regressed_2017, replace
