use "C:\Users\bz22\Desktop\ComparativeMortalityData\RandomStatistics\PopulationByAge\Anglophone\AllAgesAllyears\AnglophonePopulationByAgeAllYearsUNData.dta"
keep if area == "Total"
destring year, replace
gen agelen = strlen(age)
drop if sex == "Both Sexes"
keep if agelen >= 4 | age == "0" | age == "1" | age == "2" | age== "3" | age== "4"
drop if age == "0 - 4" | age == "1 - 4"
drop agelen
rename countryorarea countrystr
rename sex sexstr
gen sex = .
replace sex = 1 if sexstr == "Male"
replace sex = 2 if sexstr == "Female"
replace countrystr = "USA" if countrystr == "United States of America"
replace countrystr = "UK" if countrystr =="United Kingdom of Great Britain and Northern Ireland"
drop if reliability == "Provisional figure"
