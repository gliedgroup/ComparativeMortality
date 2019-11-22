use "C:\Users\bz22\Desktop\ComparativeMortalityData\RandomStatistics\CoDandPopulation\WHODirect\AllAgesAllCauses\ICD7-10AngloWideEliminatedTripleCountingAddUSCanadaMalesAndFemalesPost2006.dta"
* All Causes Crude Rate Graphs

graph twoway (line AllCauseMortalityPer100k year if countrystr == "Australia", msize(tiny) msymbol(triangle_hollow)) (line AllCauseMortalityPer100k year if countrystr == "Canada", msize(tiny) msymbol(square_hollow)) (line AllCauseMortalityPer100k year if countrystr == "UK", msize(tiny) msymbol(circle_hollow)) (line AllCauseMortalityPer100k year if countrystr == "USA" , msize(tiny) msymbol(diamond_hollow)) if sex == 1 & agecat ==1 & AllCauseMortalityPer100k >0 & year >=1960 , by(agecat, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0)) title(All Cause Crude Mortality Rate Males)

graph export "C:\Users\bz22\Desktop\ComparativeMortality\output\WHOvsOECD\WHOStataGraphs\AllCauseCrudeMortalityMales.pdf", as(pdf) name("Graph")

graph twoway (line AllCauseMortalityPer100k year if countrystr == "Australia", msize(tiny) msymbol(triangle_hollow)) (line AllCauseMortalityPer100k year if countrystr == "Canada", msize(tiny) msymbol(square_hollow)) (line AllCauseMortalityPer100k year if countrystr == "UK", msize(tiny) msymbol(circle_hollow)) (line AllCauseMortalityPer100k year if countrystr == "USA" , msize(tiny) msymbol(diamond_hollow)) if sex == 2 & agecat ==1 & AllCauseMortalityPer100k >0 & year >=1960 , by(agecat, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0)) title(All Cause Crude Mortality Rate Females)

graph export "C:\Users\bz22\Desktop\ComparativeMortality\output\WHOvsOECD\WHOStataGraphs\AllCauseCrudeMortalityRateFemales.pdf", as(pdf) name("Graph")

* All Causes Number of Deaths Graphs



graph twoway (line AllCauseDeaths year if countrystr == "Australia", msize(tiny) msymbol(triangle_hollow)) (line AllCauseDeaths year if countrystr == "Canada", msize(tiny) msymbol(square_hollow)) (line AllCauseDeaths year if countrystr == "UK", msize(tiny) msymbol(circle_hollow)) (line AllCauseDeaths year if countrystr == "USA" , msize(tiny) msymbol(diamond_hollow)) if sex == 1 & agecat ==1 & AllCauseDeaths >0 & year >=1960 , by(agecat, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0)) title(All Cause Deaths Males)

graph export "C:\Users\bz22\Desktop\ComparativeMortality\output\WHOvsOECD\WHOStataGraphs\AllCauseDeathsMales.pdf", as(pdf) name("Graph")

graph twoway (line AllCauseDeaths year if countrystr == "Australia", msize(tiny) msymbol(triangle_hollow)) (line AllCauseDeaths year if countrystr == "Canada", msize(tiny) msymbol(square_hollow)) (line AllCauseDeaths year if countrystr == "UK", msize(tiny) msymbol(circle_hollow)) (line AllCauseDeaths year if countrystr == "USA" , msize(tiny) msymbol(diamond_hollow)) if sex == 2 & agecat ==1 & AllCauseDeaths >0 & year >=1960 , by(agecat, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0)) title(All Cause Deaths Females)

graph export "C:\Users\bz22\Desktop\ComparativeMortality\output\WHOvsOECD\WHOStataGraphs\AllCauseDeathsFemales.pdf", as(pdf) name("Graph")

*External Deaths Rate Graphs

graph twoway (line ExIntCauseMortalityPer100k year if countrystr == "Australia", msize(tiny) msymbol(triangle_hollow)) (line ExIntCauseMortalityPer100k year if countrystr == "Canada", msize(tiny) msymbol(square_hollow)) (line ExIntCauseMortalityPer100k year if countrystr == "UK", msize(tiny) msymbol(circle_hollow)) (line ExIntCauseMortalityPer100k year if countrystr == "USA" , msize(tiny) msymbol(diamond_hollow)) if sex == 1 & agecat ==1 & ExternalD == 1 & ExIntCauseMortalityPer100k >0 & year >=1960 , by(agecat, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0)) title(External Cause Crude Mortality Rate Males)

graph export "C:\Users\bz22\Desktop\ComparativeMortality\output\WHOvsOECD\WHOStataGraphs\ExternalCauseCrudeMortalityMales.pdf", as(pdf) name("Graph")

graph twoway (line ExIntCauseMortalityPer100k year if countrystr == "Australia", msize(tiny) msymbol(triangle_hollow)) (line ExIntCauseMortalityPer100k year if countrystr == "Canada", msize(tiny) msymbol(square_hollow)) (line ExIntCauseMortalityPer100k year if countrystr == "UK", msize(tiny) msymbol(circle_hollow)) (line ExIntCauseMortalityPer100k year if countrystr == "USA" , msize(tiny) msymbol(diamond_hollow)) if sex == 2 & agecat ==1 & ExternalD == 1 & ExIntCauseMortalityPer100k >0 & year >=1960 , by(agecat, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0)) title(External Cause Crude Mortality Rate Females)

graph export "C:\Users\bz22\Desktop\ComparativeMortality\output\WHOvsOECD\WHOStataGraphs\ExternalCauseCrudeMortalityRateFemales.pdf", as(pdf) name("Graph")

*External Cause Number of Deaths Graphs


graph twoway (line DeathsByExternalInternalCauses year if countrystr == "Australia", msize(tiny) msymbol(triangle_hollow)) (line DeathsByExternalInternalCauses year if countrystr == "Canada", msize(tiny) msymbol(square_hollow)) (line DeathsByExternalInternalCauses year if countrystr == "UK", msize(tiny) msymbol(circle_hollow)) (line DeathsByExternalInternalCauses year if countrystr == "USA" , msize(tiny) msymbol(diamond_hollow)) if sex == 1 & agecat ==1 & ExternalD == 1 & DeathsByExternalInternalCauses >0 & year >=1960 , by(agecat, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0)) title(External Cause Deaths Males)

graph export "C:\Users\bz22\Desktop\ComparativeMortality\output\WHOvsOECD\WHOStataGraphs\ExternalCauseDeathsMales.pdf", as(pdf) name("Graph") replace

graph twoway (line DeathsByExternalInternalCauses year if countrystr == "Australia", msize(tiny) msymbol(triangle_hollow)) (line DeathsByExternalInternalCauses year if countrystr == "Canada", msize(tiny) msymbol(square_hollow)) (line DeathsByExternalInternalCauses year if countrystr == "UK", msize(tiny) msymbol(circle_hollow)) (line DeathsByExternalInternalCauses year if countrystr == "USA" , msize(tiny) msymbol(diamond_hollow)) if sex == 2 & agecat ==1 & ExternalD == 1 & DeathsByExternalInternalCauses >0 & year >=1960 , by(agecat, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0)) title(External Cause Deaths Females)

graph export "C:\Users\bz22\Desktop\ComparativeMortality\output\WHOvsOECD\WHOStataGraphs\ExternalCauseDeathsFemales.pdf", as(pdf) name("Graph") replace

*Internal Deaths Rate Graphs

graph twoway (line ExIntCauseMortalityPer100k year if countrystr == "Australia", msize(tiny) msymbol(triangle_hollow)) (line ExIntCauseMortalityPer100k year if countrystr == "Canada", msize(tiny) msymbol(square_hollow)) (line ExIntCauseMortalityPer100k year if countrystr == "UK", msize(tiny) msymbol(circle_hollow)) (line ExIntCauseMortalityPer100k year if countrystr == "USA" , msize(tiny) msymbol(diamond_hollow)) if sex == 1 & agecat ==1 & ExternalD == 0 & ExIntCauseMortalityPer100k >0 & year >=1960 , by(agecat, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0)) title(Internal Cause Crude Mortality Rate Males)

graph export "C:\Users\bz22\Desktop\ComparativeMortality\output\WHOvsOECD\WHOStataGraphs\InternalCauseCrudeMortalityMales.pdf", as(pdf) name("Graph")

graph twoway (line ExIntCauseMortalityPer100k year if countrystr == "Australia", msize(tiny) msymbol(triangle_hollow)) (line ExIntCauseMortalityPer100k year if countrystr == "Canada", msize(tiny) msymbol(square_hollow)) (line ExIntCauseMortalityPer100k year if countrystr == "UK", msize(tiny) msymbol(circle_hollow)) (line ExIntCauseMortalityPer100k year if countrystr == "USA" , msize(tiny) msymbol(diamond_hollow)) if sex == 2 & agecat ==1 & ExternalD == 0 & ExIntCauseMortalityPer100k >0 & year >=1960 , by(agecat, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0)) title(Internal Cause Crude Mortality Rate Females)

graph export "C:\Users\bz22\Desktop\ComparativeMortality\output\WHOvsOECD\WHOStataGraphs\InternalCauseCrudeMortalityRateFemales.pdf", as(pdf) name("Graph")





























*Total Below Ignore
graph twoway (line AllCauseMortalityPer100k year if countrystr == "Australia", msize(tiny) msymbol(triangle_hollow)) (line AllCauseMortalityPer100k year if countrystr == "Canada", msize(tiny) msymbol(square_hollow)) (line AllCauseMortalityPer100k year if countrystr == "UK", msize(tiny) msymbol(circle_hollow)) (line AllCauseMortalityPer100k year if countrystr == "USA" , msize(tiny) msymbol(diamond_hollow)) if agecat ==1 & AllCauseMortalityPer100k >0 & year >=1960 , by(agecat, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0)) title(All Cause Crude Mortality Rate Total)

graph export "C:\Users\bz22\Desktop\ComparativeMortality\output\WHOvsOECD\WHOStataGraphs\AllCauseCrudeMortalityRateTotal.pdf", as(pdf) name("Graph")
