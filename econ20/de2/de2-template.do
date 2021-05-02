clear
cap clear matrix
set more off
set matsize 100 /* matsize relates to the max # variables you can have in your dataset */

/* Name:
*/

* change to your folder
cd ""
capture log close
log using "de6.log", replace

use "pubtwins.dta", clear
describe
summ

/* 1a */
reg lwage educ, robust 
outreg2 using table1, excel ctitle(Ques 1a,ln wg-OLS) replace 
  /* this starts to create a "table1.xml".  This command will only work if you type "ssc install outreg2" on the command line */
  
gr two scatter lwage educ, ///
  title("Log Wage vs. Education") xtitle("Years of Education") ytitle("Ln(Wage)")
gr export "ps5q1a.png", replace as(png)

/* 1b */
reg lwage educ age age2 white female, robust
outreg2 using table1, excel ctitle(Ques 1b,ln wg-OLS) append 
  /* Notice that this "appends" a second column */

/* 1c: educ is the dependent variable, so say so in the "ctitle" of outreg2 */
   // insert your regression command here
test age age2 white female
outreg2 using table1, excel ctitle(Ques 1c,Educ) append addstat(F-stat,`r(F)’,p-value,`r(p)’) 

/* 2a */

/* 3a */

/* 3b: use IV to get rid of measurement error */

/* 4a */
* model only, no STATA question

/* 4b */

/* 4c */

/* 4d */



capture log close
