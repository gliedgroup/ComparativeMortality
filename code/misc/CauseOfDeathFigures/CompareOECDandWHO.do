use "C:\Users\bz22\Desktop\ComparativeMortalityData\RandomStatistics\CoDandPopulation\WHODirect\AllAgesAllCauses\ICD7-10AngloLongEliminatedTripleCounting.dta"

gen AllCauseMortalityPer100k = AllCauseMortality*100000


*All Cause Mortliaty
graph twoway (scatter AllCauseMortalityPer100k year if countrystr == "Australia", msize(tiny) msymbol(triangle_hollow)) (scatter AllCauseMortalityPer100k year if countrystr == "Canada", msize(tiny) msymbol(square_hollow)) (scatter AllCauseMortalityPer100k year if countrystr == "UK", msize(tiny) msymbol(circle_hollow)) (scatter AllCauseMortalityPer100k year if countrystr == "USA" , msize(tiny) msymbol(diamond_hollow)) if sex == 1 & agecat ==1, by(agecat, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0))

graph twoway (scatter AllCauseDeaths year if countrystr == "Australia", msize(tiny) msymbol(triangle_hollow)) (scatter AllCauseDeaths year if countrystr == "Canada", msize(tiny) msymbol(square_hollow)) (scatter AllCauseDeaths year if countrystr == "UK", msize(tiny) msymbol(circle_hollow)) (scatter AllCauseDeaths year if countrystr == "USA" , msize(tiny) msymbol(diamond_hollow)) if sex == 1 & agecat ==1, by(agecat, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0))

*All Cause Deaths
Male All Ages
table countrystr year if agecat == 1 & sex == 1, c(mean AllCauseDeaths)

Female All AllAges
table countrystr year if agecat == 1 & sex == 2, c(mean AllCauseDeaths)



*External Cause Deaths
Male All Ages
table countrystr year if agecat == 1 & sex == 1 & ExternalD == 1, c(mean DeathsByExternalInteralCauses)

Female All Ages
table countrystr year if agecat == 1 & sex == 2  & ExternalD == 1, c(mean DeathsByExternalInteralCauses)
