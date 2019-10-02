
use "C:\Users\bz22\Downloads\WIID_19Dec2018\WIID_19Dec2018.dta"

keep if country == "Australia" | country == "Canada" | country == "Denmark" | country == "France" | country == "Germany" | country == "Israel" | country == "Italy" | country =="Japan" |country == "Netherlands" | country == "Norway" | country == "Spain" | country == "Sweden" | country == "Taiwan (China)" | country == "United Kingdom" | country == "United States"

replace country = "Taiwan" if country == "Taiwan (China)"
replace country = "UK" if country == "United Kingdom"
replace country = "USA" if country == "United States"


save "C:\Users\bz22\Desktop\ComparativeMortalityData\WorldIncomeInequalityDatabase.dta", replace

keep if popcovr_detailed == 101
save "C:\Users\bz22\Desktop\ComparativeMortalityData\WorldIncomeInequalityDatabaseAllSubPopOnly.dta"
replace country = "WestGermany" if areacovr_detailed == 409
drop if areacovr_detailed == 408
keep if areacovr_detailed == 101 | areacovr_detailed == 409
egen mean_gini = mean(gini_reported), by(country year)
keep country year mean_gini
rename year Year
rename country countrystr
save "C:\Users\bz22\Desktop\ComparativeMortalityData\WorldIncomeInequalityDatabaseAllSubPopOnlyMeanGiniOnly.dta", replace
duplicates drop
save "C:\Users\bz22\Desktop\ComparativeMortalityData\WorldIncomeInequalityDatabaseAllSubPopOnlyMeanGiniOnly.dta", replace



// Ignore below this for now
global varlist gini_reported q1 q2 q3 q4 q5 d1 d2 d3 d4 d5 d6 d7 d8 d9 d10 bottom5 top5

egen
