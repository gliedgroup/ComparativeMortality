use "C:\Users\bz22\Desktop\ComparativeMortalityData\RandomStatistics\PopulationByAge\USandCanadaPopulationByAge2006-2017.dta"
keep if area == "Total"
drop if year == 2017
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
duplicates drop countrystr year age, force
egen age95 = sum(value) if age == "95 - 99" | age == "100 +", by(countrystr year sexstr)
replace age = "95+" if age == "95 - 99"
drop if age == "100 + "
replace value = age95 if age == "95+"
drop age95
drop recordtype reliability sourceyear valuefootnotes

gen agecat = .
replace agecat = 1 if age == "Total"
replace agecat = 2 if age == "0"
replace agecat = 3 if age == "1"
replace agecat = 4 if age == "2"
replace agecat = 5 if age == "3"
replace agecat = 6 if age == "4"
replace agecat = 7 if age == "5 - 9"
replace agecat = 8 if age == "10 - 14"
replace agecat = 9 if age == "15 - 19"
replace agecat = 10 if age == "20 - 24"
replace agecat = 11 if age == "25 - 29"
replace agecat = 12 if age == "30 - 34"
replace agecat = 13 if age == "35 - 39"
replace agecat = 14 if age == "40 - 44"
replace agecat = 15 if age == "45 - 49"
replace agecat = 16 if age == "50 - 54"
replace agecat = 17 if age == "55 - 59"
replace agecat = 18 if age == "60 - 64"
replace agecat = 19 if age == "65 - 69"
replace agecat = 20 if age == "70 - 74"
replace agecat = 21 if age == "75 - 79"
replace agecat = 22 if age == "80 - 84"
replace agecat = 23 if age == "85 - 89"
replace agecat = 24 if age == "90 - 94"
replace agecat = 25 if age == "95+"

save "C:\Users\bz22\Desktop\ComparativeMortalityData\RandomStatistics\PopulationByAge\USandCanadaPopulationByAge2006-2017Cleaned.dta", replace
