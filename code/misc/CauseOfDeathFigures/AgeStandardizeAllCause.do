Standardized base population is US1950


use "C:\Users\bz22\Desktop\ComparativeMortalityData\RandomStatistics\CoDandPopulation\WHODirect\AllAgesAllCauses\AllCauseMortalityPer100kByAge.dta" 
 gen agecat2 = agecat

 replace agecat2 = 3 if agecat == 4 | agecat == 5 | agecat == 3

 replace agecat2 = 23 if agecat > 23 & agecat <26

 replace agecat2 = 2 if agecat == 4 | agecat == 5 | agecat == 6 | agecat == 3

 label define agecat2 1 "AllAges" 2 "0-4" 7 "5-9" 8 "10-14" 9 "15-19" 10 "20-24" 11 "25-29" 12 "30-34" 13 "35-39" 14 "40-44" 15 "45-49" 16 "50-54" 17 "55-59" 18 "60-64" 19 "65-69" 20 "70-74" 21 "75-79" 22 "80-84" 23 "85+"

 label values agecat2 agecat2



 egen AllCauseDeathsByAgeCat2 = sum(AllCauseDeaths), by(year countrystr sex agecat2)

 egen PopByAgeCat2 = sum(pop), by(year countrystr sex agecat2)


 duplicates drop year sex countrystr agecat2, force

drop if agecat == 1 | agecat == 26

merge m:1 sex agecat2 using "C:\Users\bz22\Desktop\ComparativeMortalityData\RandomStatistics\PopulationByAge\StandardAge\US1950PopStandard.dta"

drop if _merge == 1

drop popagecat2 totpopagecat2

gen MortalityRatePer100k = AllCauseDeathsByAgeCat2*100000/PopByAgeCat2

gen AgeMortPer100k = MortalityRatePer100k*proportion

egen StandMortPer100k = sum(AgeMortPer100k), by(year countrystr sex)

save "C:\Users\bz22\Desktop\ComparativeMortalityData\RandomStatistics\CoDandPopulation\WHODirect\AllAgesAllCauses\AllCauseMortalityPer100kAgeStandardized.dta"

preserve

collapse (mean) StandMortPer100k, by(year countrystr sex)

graph twoway (line StandMortPer100k year if countrystr == "Australia", msize(tiny) msymbol(triangle_hollow)) (line StandMortPer100k year if countrystr == "Canada", msize(tiny) msymbol(square_hollow)) (line StandMortPer100k year if countrystr == "UK", msize(tiny) msymbol(circle_hollow)) (line StandMortPer100k year if countrystr == "USA" , msize(tiny) msymbol(diamond_hollow)) if sex == 1 & StandMortPer100k > 0 & year >=1960 , legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0)) title(All Cause Standard Mortality Rate Males)

graph export "C:/Users/bz22/Desktop/ComparativeMortality/output/AgeStandardizeGraphs/AllCauseMortalityPer100kMales1950USStandard.pdf", as(pdf) name("Graph") replace

graph twoway (line StandMortPer100k year if countrystr == "Australia", msize(tiny) msymbol(triangle_hollow)) (line StandMortPer100k year if countrystr == "Canada", msize(tiny) msymbol(square_hollow)) (line StandMortPer100k year if countrystr == "UK", msize(tiny) msymbol(circle_hollow)) (line StandMortPer100k year if countrystr == "USA" , msize(tiny) msymbol(diamond_hollow)) if sex == 2 & StandMortPer100k > 0 & year >=1960 , legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0)) title(All Cause Standard Mortality Rate Females)


graph export "C:/Users/bz22/Desktop/ComparativeMortality/output/AgeStandardizeGraphs/AllCauseMortalityPer100kFemales1950USStandard.pdf", as(pdf) name("Graph") replace
