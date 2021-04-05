clear all
set more off
cap log close

/* Text between /* and */ are "comments" -- these are your notes to help you remember 
what the program was doing at an given point. It does not execute any STATA commands */
/* You can also put comments on a single line using // to start a commmand */


/* YOU MAY WANT TO CHANGE THE WORKING DIRECTORY AT THE START OF YOUR LOG FILE */
// cd ""

/// INITIATE LOG FILE ////
log using "template.log", replace


/// TELL STATA TO READ IN OUR DATASET ////
use cpsmar08_10pct.dta, clear


/// EXECUTE THE INITIAL COMMANDS ///
describe
summarize


//// NOW WRITE IN YOUR COMMANDS BELOW ///





capture log close /* last command in any program */
