** Prepping Denmark and Netherlands 
global sex "Female Male Total"
foreach s in $sex{
import excel "C:\Users\bz22\Desktop\Deaths of Dispair Project\Extra Countries\Denmark Mortality.xlsx", sheet("Denmark `s'") firstrow clear
rename Year year 
rename qx Mortality
gen countrystr = "Den"
local j = substr("`s'", 1, 1)
gen sexstr = "`j'"
keep if year == 1960 | year == 1965 | year == 1970 | year == 1975 | year == 1980 | year == 1985 | year == 1990 | year == 1995 | year == 2000 | year == 2005 | year == 2010 | year == 2015
drop if Age == "110+"
destring Age, replace 
drop if Age <5 | Age > 80
save "C:\Users\bz22\Desktop\Deaths of Dispair Project\Extra Countries\Denmark `s'.dta"
}


foreach s in $sex{
import excel "C:\Users\bz22\Desktop\Deaths of Dispair Project\Extra Countries\Netherlands Mortality.xlsx", sheet("Netherlands `s'") firstrow clear
rename Year year 
rename qx Mortality
gen countrystr = "Net"
local j = substr("`s'", 1, 1)
gen sexstr = "`j'"
keep if year == 1960 | year == 1965 | year == 1970 | year == 1975 | year == 1980 | year == 1985 | year == 1990 | year == 1995 | year == 2000 | year == 2005 | year == 2010 | year == 2015
drop if Age == "110+"
destring Age, replace 
drop if Age <5 | Age > 80
save "C:\Users\bz22\Desktop\Deaths of Dispair Project\Extra Countries\Netherlands `s'.dta"
}

