use "C:\Users\bz22\Desktop\ComparativeMortalityData\Pre1960 Countries\All Countries 5-80 1940-Present.dta" , clear
replace countrystr = "Germany" if countrystr == "WestGermany" & Year < 1990
merge m:1 countstr year using "C:\Users\bz22\Desktop\ComparativeMortalityData\WorldIncomeInequalityDatabaseAllSubPopOnlyMeanGiniOnly.dta"
save "C:\Users\bz22\Desktop\ComparativeMortalityData\Pre1960 Countries\All Countries 5-80 1940-PresentMergeWGini.dta" 
