********************************************************************************
*	
*			PREDICT STOCK MARKET RETURNS USING YAHOO! FINANCE DATA
*			  (lukman.edwindra@gmail.com // github.com/ledwindra)
*								MAY 24, 2018					
*
********************************************************************************

*==============================================================================*
*
*						STEP 1: LOAD ALL DATA
*
*==============================================================================*

clear all
set more off

* SET PATH
gl path "~:/your/path/here"

* CREATE A BALANCED DATA SET FOR EACH YEAR 2013, 2014, ..., 2017
* SAVE DATA SET BEFORE DOING REGRESSION

qui forv y == 2013/2017{
		use $path/jkse_raw, clear
		keep if yy == "`y'"
		bys code: g N = _N
		qui sum N, det
		drop if N < r(max) 
		local Nmax = r(max)
		egen code_id = group(code)
		compress
		saveold $path/temp_`y', replace
	}
	
*==============================================================================*
*
*					STEP 2: REGRESS STOCK RETURNS
*
*==============================================================================*

/*
	IN THIS SECTION, WE WOULD LIKE TO KNOW WHETHER FIRM'S STOCK RETURNS ARE
	ASSOCIATED WITH THE FIRM'S PAST RETURNS. THAT IS, WHETHER PAST RETURNS
	CORRELATE POSITIVELY OR NEGATIVELY TO FUTURE RETURNS.
	
	TO GET THAT, WE WILL OBTAIN THE REGRESSION COEFFICIENTS. POSITIVE VALUES
	MEAN THE FIRM'S STOCK RETURNS ARE ASSOCIATED WITH THE FIRM'S PAST RETURNS,
	AND VICE VERSA.
	
	THE REGRESSION IS CLUSTERED BY YEAR AND QUARTER. FOR EACH YEAR, THERE ARE
	FOUR QUARTERS, HENCE WE WILL REGRESS IN Y2013Q1, Y2013Q2, ..., Y2017Q4. AFTER
	THAT, FOR EACH FIRM, WE AVERAGE THE REGRESSION COEFFICIENT IN THAT YEAR.
	SO FOR EXAMPLE IN 2017, WE WILL AVERAGE THE COEFFICIENTs IN Y2017Q1 - Y2017Q4.
	
	THEREFORE, WE WILL KNOW ON AVERAGE IN PARTICULAR YEAR WHETHER FIRM'S STOCK
	RETURNS ARE ASSOCIATED WITH THE FIRM'S PAST RETURNS. TO KNOW WHETHER THE
	MODEL IS GOOD OR NOT, I USE THE ROOT MEAN SQUARED ERROR. THE LOWER THE RMSE,
	THE BETTER THE MODEL.
	
*/

qui forv y = 2013/2017{
		use $path/temp_`y', clear
		qui sum N, det
		local Nmax = r(max)

		g beta = .
		forv n = 1/`Nmax'{
			forv m = 1/4{
					qui reg adjclose_return adjclose_return_L1 if code_id == `n' & qq == `m'
					g beta_`n'_201`y'_`m' = _b[adjclose_return_L1]
					qui replace beta = beta_`n'_201`y'_`m' if code_id == `n' & qq == `m'
				}
			}
					drop beta_*
		
		g beta_mu = .
		forv n = 1/`Nmax'{
				qui sum beta if code_id == `n', det
				qui g beta_mu_`n'_201`y' = r(mean)
				qui replace beta_mu = beta_mu_`n'_201`y' if code_id == `n'
			}
				drop beta_mu_*
				
		g rmse = .			
		forval n = 1/`Nmax'{	
			forv m = 1/4{
					qui reg adjclose_return adjclose_return_L1 if code_id == `n' & qq == `m'
					g rmse_`n'_201`y'_`m' = e(rmse)
					qui replace rmse = rmse_`n'_201`y'_`m' if code_id == `n' & qq == `m'
				}
			}
					drop rmse_*

		g rmse_mu = .
		forv n = 1/`Nmax'{
				qui sum rmse if code_id == `n', det
				qui g rmse_mu_`n'_201`y' = r(mean)
				qui replace rmse_mu = rmse_mu_`n'_201`y' if code_id == `n'
			}
				drop rmse_mu_*

		saveold $path/regress_`y', replace		
	}

*==============================================================================*
*
*	STEP 3: MAKE FINAL DATA BASED ON TRAIN/TEST CALCULATION
*
*==============================================================================*

* LOAD AND APPEND DATA SET AFTER REGRESSION
use $path/regress_2017, replace
	forv y = 2016(-1)2013{
			append using $path/regress_`y'
		}

* BALANCE OBSERVATIONS
* IT SHOULD BE EQUAL OBSERVATIONS FROM 2013 - 2017
drop if beta_mu == . | rmse_mu == .
keep yy code rmse_mu beta_mu 
bys code yy: keep if _n == 1
bys code: drop if _N < 5 
		
* RESHAPE DATA INTO WIDE
reshape wide beta rmse, i(code) j(yy) string
order code beta* rmse*
	forv n = 2016/2017{
			drop if beta_mu`n' == . // CHECK FOR MISSING VALUES
			drop if rmse_mu`n' == . // CHECK FOR MISSING VALUES
		}
			
	
/*
	IN THIS SECTION, WE WILL TRAIN THE DATA SET, BASED ON THE COEFFICIENTS
	AND RMSEs. FOLLOWING ARE THE STEPS:
	
	1. TRAINING DATA CONSIST OF COEFFICIENTS AND RMSEs IN 2013 - 2016;
	
	2. TEST DATA WILL BE COEFFICIENTS AND RMSEs in 2017;
	
	3. MAKE AVERAGE TRAINING DATA;
	
	4. SUBSTRACT TEST DATA WITH TRAINING DATA (2017 - MEAN(2012-2016));
	
	5. IF:
		- THE COEFFICIENT SIGNS OF TRAIN AND TEST DATA ARE DIFFERENT, FOR EXAMPLE
		  IN THE TRAINING IT'S POSITIVE BUT NEGATIVE IN THE TEST, THEN THE TRAINING
		  DATA ARE NOT GOOD ENOUGH PREDICT THE ASSOCIATION BETWEEN THE FIRM'S 
		  RETURNS AND THE FIRM'S PAST RETURNS;
		  
		- EVEN IF THE COEFFICIENT VALUES BETWEEN TRAINING AND TEST DATA ARE THE
		  SAME, WE HAVE TO CHECK WHETHER THERE ARE DISCREPANCIES BETWEEN THE RMSEs
		  VALUES. IF RMSEs IN 2017 ARE HIGHER THAN THE TRAINING DATA, THEN THE
		  TRAINING DATA SET IS NOT GOOD ENOUGH TO PREDICT THE TEST DATA;
		  
	6. IN THE END, WE ARE INTERESTED WITH:
		- THE FIRMS THAT HAVE THE SAME COEFFICIENT SIGNS BETWEEN THE TRAINING
		  AND TEST DATA; AND
		- THE FIRMS THAT HAVE LOWER RMSEs in THE TEST DATA THAN THE TRAINING DATA; AND
		- THE FIRMS THAT HAVE THE LOWEST RMSEs DIFFERENCES.
*/

	
local beta_train beta_mu2013 beta_mu2014 beta_mu2015 beta_mu2016
local rmse_train rmse_mu2013 rmse_mu2014 rmse_mu2015 rmse_mu2016
	egen beta_train = rowmean(`beta_train')
	egen rmse_train = rowmean(`rmse_train')
		ren beta_mu2017 beta_test
		ren rmse_mu2017 rmse_test
			order beta_test, a(beta_train)
			order rmse_test, a(rmse_train)
		
g beta_good = ((beta_train > 0 & beta_test > 0) | ///
				(beta_train < 0 & beta_test < 0) | ///
				beta_train == 0 & beta_test == 0), a(beta_test)
				
g rmse_good = (rmse_test < rmse_train), a(rmse_test)

g overall_good = (beta_good == 1 & rmse_good == 1)
keep if overall_good == 1

g rmse_diff = rmse_test-rmse_train		// MUST BE NEGATIVE VALUES
egen rmse_diff_rank = rank(rmse_diff)	// 1 = LOWEST; _N = HIGHEST
sort rmse_diff_rank 					// SORT FROM LOWEST

*==============================================================================*
*
*								CONCLUSION
*
*==============================================================================*

/*
	IF WE TABULATE THE COEFFICIENT VALUES, WE CAN SEE THE FIRM'S STOCK RETURNS
	ARE MOSTLY HAVING NEGATIVE RELATIONSHIPS WITH THE PAST RETURNS. MEANING,
	AN INCREASE OF X UNIT IN PAST RETURNS WILL LIKELY DECREASE Y UNIT OF FUTURE
	RETURNS.
	
	THIS MAKES SENSE IN THE REAL WORLD SCENARIO, WHERE MARKET PARTICIPANT BUYS 
	WHEN THE PRICE IS LOW; AND SELL WHEN THE PRICE IS HIGH. SO THE INCREASING
	OF PAST RETURNS TRANSLATE TO STOCK SELLING, RESULTING TO LOW FUTURE RETURNS,
	AND VICE VERSA.
	
	THIS IS NOT AN INVESTMENT ADVICE, ALTHOUGH I USE THIS MODEL IN THE REAL WORLD
	SCENARIO. ERRORS ARE MY OWN.
*/
	
saveold $path/jkse_final, replace
