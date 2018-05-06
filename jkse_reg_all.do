********************************************************************************
*									
*	
*	Data source	: Yahoo! Finance
*	Author		: lukman.edwindra@gmail.com
*	Date updated	: May 3, 2018
*
********************************************************************************
clear
set more off

forv n = 7(-1)2{
		do $jkse/do/jkse_analyzed_201`n'
	}


use $jkse/jkse_analyzed_regressed_2017, replace
	forv n = 6(-1)2{
			append using $jkse/jkse_analyzed_regressed_201`n'
		}
	
* keep necessary vars 
keep yy code beta rmse
	sort code
		bys code: drop if _N < 6

reshape wide beta rmse, i(code) j(yy) string
	order code beta* rmse*
		forv n = 2012/2017{
				drop if beta`n' == .
				drop if rmse`n' == .
			}

local rmse_train rmse2012 rmse2013 rmse2014 rmse2015 rmse2016
egen rmse_train = rowmean(`rmse_train')
	order rmse2017, a(rmse_train)

local beta_train beta2012 beta2013 beta2014 beta2015 beta2016
egen beta_train = rowmean(`beta_train')
	order beta2017, a(beta_train)

g rmse_diff = (rmse2017 - rmse_train), a(rmse2017)
	drop if rmse_diff > 0

qui sum beta2017, det
	keep if beta2017 <= r(p5) | beta2017 >= r(p95)
