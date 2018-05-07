	********************************************************************************
*									
*	
*	Data source	: Yahoo! Finance
*	Author		: lukman.edwindra@gmail.com
*	Date updated	: May 7, 2018
*	Purpose		: Test my risk appetite
*
********************************************************************************
clear
set more off
	
gl jkse "" // your working directory here

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

local rmse_train rmse_mu2012 rmse_mu2013 rmse_mu2014 rmse_mu2015 rmse_mu2016
egen rmse_train = rowmean(`rmse_train')
	order rmse_mu2017, a(rmse_train)

local beta_train beta_mu2012 beta_mu2013 beta_mu2014 beta_mu2015 beta_mu2016
egen beta_train = rowmean(`beta_train')
	order beta_mu2017, a(beta_train)

g rmse_diff = (rmse_mu2017 - rmse_train), a(rmse_mu2017)
	drop if rmse_diff > 0
		qui sum rmse_diff, det
			keep if rmse_diff <= r(p50)

g beta_diff = (beta_train < 0 & beta_mu2017 < 0) | (beta_train > 0 & beta_mu2017 > 0)
	keep if beta_diff == 1
qui sum beta_mu2017, det
	drop if beta_mu2017 > r(p5) & beta_mu2017 < r(p95)
	
keep code rmse_train rmse_mu2017 rmse_diff beta_train beta_mu2017
	
saveold $jkse/jkse_buy_20180507, replace
