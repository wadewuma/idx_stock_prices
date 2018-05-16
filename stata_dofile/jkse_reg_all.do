	********************************************************************************
*									
*	
*	Data source		: Yahoo! Finance
*	Author			: lukman.edwindra@gmail.com
*	Date updated	: May 3, 2018
*	Purpose			: Create a model that requires me no financial statements 
*					  and no news to hedge me against market meltdown, although 
*					  it seems boring when market is in a good condition
*
********************************************************************************
clear
set more off
	
gl jkse "C:/Users/lukman/OneDrive/5_Finance/2_Yahoo/jkse"

/*
forv n = 7(-1)2{
		do $jkse/2_do/jkse_analyzed_201`n'
	}
*/
use $jkse/3_dta/jkse_analyzed_regressed_2017, replace
	forv n = 6(-1)2{
			append using $jkse/3_dta/jkse_analyzed_regressed_201`n'
		}
		
* keep necessary vars 
keep yy code rmse_mu beta_mu 
	sort code
		bys code: drop if _N < 6

		
reshape wide beta rmse, i(code) j(yy) string
	order code beta* rmse*
		forv n = 2012/2017{
				drop if beta_mu`n' == .
				drop if rmse_mu`n' == .
			}

forv n = 2/6{
		g rmse_train_201`n' = rmse_mu2017 - (rmse_mu201`n')
	}
	
forv n = 2/5{
		g rmse_train_201`n'`n'+1 = rmse_mu2017 - (rmse_mu201`n'+rmse_mu201`n'+1)
	}			
			x
			
			
local rmse_train rmse_mu2012 rmse_mu2013 rmse_mu2014 rmse_mu2015 rmse_mu2016
egen rmse_train = rowmean(`rmse_train')
	order rmse_mu2017, a(rmse_train)

local beta_train beta_mu2012 beta_mu2013 beta_mu2014 beta_mu2015 beta_mu2016
egen beta_train = rowmean(`beta_train')
	order beta_mu2017, a(beta_train)

g rmse_diff = (rmse_mu2017 - rmse_train), a(rmse_mu2017)
	drop if rmse_diff > 0
		qui sum rmse_diff, det
		//	keep if rmse_diff <= r(p50)

g beta_same = (beta_train < 0 & beta_mu2017 < 0) | (beta_train > 0 & beta_mu2017 > 0)
	// keep if beta_same == 1
	
keep code rmse_train rmse_mu2017 rmse_diff beta_train beta_mu2017 beta_same
	
saveold $jkse/jkse_buy_20180507, replace
