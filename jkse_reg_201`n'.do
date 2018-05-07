********************************************************************************
*									
*	
*	Data source	: Yahoo! Finance
*	Author		: lukman.edwindra@gmail.com
*	Date updated	: May 7, 2018
*	Purpose		: Test my risk appetite
*
*********************************************************************************
clear 
set more off

* set path
gl jkse "" // your working directory here

* load jkse data
use $jkse/3_dta/jkse_cleaned, clear

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
		
g beta_mu = .
forv n = 1/`Nmax'{
		qui sum beta if code_id == `n', det
			qui g beta_mu_`n'_2017 = r(mean)
				qui replace beta_mu = beta_mu_`n'_2017 if code_id == `n'
	}
		drop beta_mu_*
		
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

g rmse_mu = .
forv n = 1/`Nmax'{
		qui sum rmse if code_id == `n', det
			qui g rmse_mu_`n'_2017 = r(mean)
				qui replace rmse_mu = rmse_mu_`n'_2017 if code_id == `n'
	}
		drop rmse_mu_*
		
bys code: g return_zero_dum = (adjclose_return == 0)
bys code: egen return_zero = sum(return_zero_dum)
	qui sum return_zero, det
		drop if return_zero >= r(mean)+(2*r(sd))
	
bys code: keep if _n == 1	

* save data
// saveold $jkse/3_dta/jkse_analyzed_regressed_2017, replace if 
