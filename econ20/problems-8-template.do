clear all
cap log close
set more off

* SET WORKING DIRECTORY HERE *
cd ""
* START LOG FILE FOR YOUR WORK *
log using problems-8, text replace



*********************************
/// PART 1: DATA PREPARATION ///
*********************************

use nls, clear
merge 1:1 id using nls-family
ren _merge merge_family
merge 1:1 id using nls-geo
ren _merge merge_geo

/* Note: we need to rename the variable _merge after the 
first merge command because STATA will try to compute a new
variable called _merge when we do the second merge, but the
merge will fail because there is already a variable called that

Since we know the merge will be perfect in this case, we do 
not actually need the _merge variables; I just drop them
automatically in my answer key */


gen lwage = log(wage)
gen exp = age - educ - 6
gen exp2 = exp^2


*******************************************
/// PART 2: UNDERSTANDING IV ESTIMATES  ///
*******************************************






*******************************************************
/// PART 3: IS COLLEGE PROXIMITY A GOOD INSTRUMENT? ///
********************************************************

forvalues i=1/9 {
gen reg66_`i' = (reg66==`i')
}



log close

