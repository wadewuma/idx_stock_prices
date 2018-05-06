********************************************************************************
*
*		MAKE INVESMENT DECISIONS IN STOCK MARKET USING YAHOO! FINANCE DATA
*
*	Purpose		: Collect all publicly listed companies' stock prices from Y!F
*	Author		: lukman.edwindra@gmail.com
*	Time frame	: Jan 1, 2008 - Apr 24, 2018
*
********************************************************************************

* first step
clear all
set more off

gl jkse "C:/Users/lukman/OneDrive/5_Finance/2_Yahoo/jkse/"

* load all publicly listed companies data
local csv: dir "$jkse/csv" files "*.JK.csv"
foreach file of local csv{
		preserve
		import delimited using "$jkse/csv/`file'", rowrange(2:) clear
		g file_name = "`file'"
		tempfile temp
		saveold "`temp'", replace
		restore
		append using "`temp'"
	}
	
* fix things
forval v = 2/7{ 
		replace v`v'="" if v`v'== "null"
		destring v`v', replace
	}

	replace date = v1 if date == ""
	replace open = v2 if open == .
	replace high = v3 if high == .
	replace low = v4 if low == .
	replace close = v5 if close == .
	replace adjclose = v6 if adjclose == .
	replace volume = v7 if volume == .
	drop v*
	
g code = substr(file_name,1,4), a(file_name)
	drop file_name
g yy = substr(date,1,4), a(code)
g mm = substr(date,6,2), a(yy)
g dd = substr(date,9,2), a(mm)
	
tempfile raw
saveold `raw', replace

* load jakarta composite index data
clear
import delimited using "${jkse}csv/^JKSE.csv", rowrange(2:)
	forval v = 2/7{
			replace v`v' = "" if v`v' == "null"
			destring v`v', g(v`v'_num)
			drop v`v'
			ren v`v'_num jkse_v`v'
		}

ren v1 		date
ren jkse_v2 jkse_open
ren jkse_v3 jkse_high
ren jkse_v4 jkse_low
ren jkse_v5 jkse_close
ren jkse_v6 jkse_adjclose
ren jkse_v7 jkse_volume

tempfile jkse
saveold `jkse', replace

* save data
merge 1:m date using `raw', nogen
g date_num = date(date, "YMD")
	format date_num %td
		order date_num date yy mm dd code
sort code date_num
drop if code == ""
	local numeric open high low close adjclose
	foreach l of local numeric{
			replace `l' = round(`l')
			replace jkse_`l' = round(jkse_`l')
		}
saveold $jkse/dta/jkse_raw, replace
export delimited $jkse/jkse_raw, replace
