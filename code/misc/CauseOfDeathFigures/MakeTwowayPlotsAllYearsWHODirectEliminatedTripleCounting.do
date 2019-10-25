use "C:\Users\bz22\Desktop\ComparativeMortalityData\RandomStatistics\CoDandPopulation\WHODirect\AllAgesAllCauses\ICD7-10AngloLongEliminatedTripleCounting.dta"

egen AllCauseDeaths = sum(deaths), by(country year sex agecat)
egen DeathsByExternalInteralCauses = sum(deaths), by(country year sex agecat ExternalD)

gen AllCauseMortality = AllCauseDeaths/pop
gen ExternalInternalCauseMortality = DeathsByExternalInteralCauses/pop

* All Cause Mortality Male Age 20-64
graph twoway (scatter AllCauseMortality year if countrystr == "Australia", msize(tiny) msymbol(triangle_hollow)) (scatter AllCauseMortality year if countrystr == "Canada", msize(tiny) msymbol(square_hollow)) (scatter AllCauseMortality year if countrystr == "UK", msize(tiny) msymbol(circle_hollow)) (scatter AllCauseMortality year if countrystr == "USA" , msize(tiny) msymbol(diamond_hollow)) if sex == 1 & agecat >= 10 & agecat <19, by(agecat, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0))


*Internal Cause Mortality Male 20-64
graph twoway (scatter ExternalInternalCauseMortality year if countrystr == "Australia", msize(tiny) msymbol(triangle_hollow)) (scatter ExternalInternalCauseMortality year if countrystr == "Canada", msize(tiny) msymbol(square_hollow)) (scatter ExternalInternalCauseMortality year if countrystr == "UK", msize(tiny) msymbol(circle_hollow)) (scatter ExternalInternalCauseMortality year if countrystr == "USA" , msize(tiny) msymbol(diamond_hollow)) if sex == 1 & agecat >= 10 & agecat <19 & ExternalD == 0, by(agecat, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0))

*External Cause Mortality Male 20-64
graph twoway (scatter ExternalInternalCauseMortality year if countrystr == "Australia", msize(tiny) msymbol(triangle_hollow)) (scatter ExternalInternalCauseMortality year if countrystr == "Canada", msize(tiny) msymbol(square_hollow)) (scatter ExternalInternalCauseMortality year if countrystr == "UK", msize(tiny) msymbol(circle_hollow)) (scatter ExternalInternalCauseMortality year if countrystr == "USA" , msize(tiny) msymbol(diamond_hollow)) if sex == 1 & agecat >= 10 & agecat <19 & ExternalD == 1, by(agecat, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0))


* All Cause Mortality Female Age 20-64
graph twoway (scatter AllCauseMortality year if countrystr == "Australia", msize(tiny) msymbol(triangle_hollow)) (scatter AllCauseMortality year if countrystr == "Canada", msize(tiny) msymbol(square_hollow)) (scatter AllCauseMortality year if countrystr == "UK", msize(tiny) msymbol(circle_hollow)) (scatter AllCauseMortality year if countrystr == "USA" , msize(tiny) msymbol(diamond_hollow)) if sex == 2 & agecat >= 10 & agecat <19, by(agecat, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0))


*Internal Cause Mortality Female 20-64
graph twoway (scatter ExternalInternalCauseMortality year if countrystr == "Australia", msize(tiny) msymbol(triangle_hollow)) (scatter ExternalInternalCauseMortality year if countrystr == "Canada", msize(tiny) msymbol(square_hollow)) (scatter ExternalInternalCauseMortality year if countrystr == "UK", msize(tiny) msymbol(circle_hollow)) (scatter ExternalInternalCauseMortality year if countrystr == "USA" , msize(tiny) msymbol(diamond_hollow)) if sex == 2 & agecat >= 10 & agecat <19 & ExternalD == 0, by(agecat, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0))

*External Cause Mortality Female 20-64
graph twoway (scatter ExternalInternalCauseMortality year if countrystr == "Australia", msize(tiny) msymbol(triangle_hollow)) (scatter ExternalInternalCauseMortality year if countrystr == "Canada", msize(tiny) msymbol(square_hollow)) (scatter ExternalInternalCauseMortality year if countrystr == "UK", msize(tiny) msymbol(circle_hollow)) (scatter ExternalInternalCauseMortality year if countrystr == "USA" , msize(tiny) msymbol(diamond_hollow)) if sex == 2 & agecat >= 10 & agecat <19 & ExternalD == 1, by(agecat, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0))
