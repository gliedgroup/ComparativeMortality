use "C:\Users\bz22\Desktop\ComparativeMortalityData\RandomStatistics\CoDandPopulation\WHODirect\AllAgesAllCauses\ICD7-10AngloWideEliminatedTripleCountingAddUSCanadaMalesAndFemalesPost2006.dta"

gen DeathsByCarPer100k = DeathsByCar*100000/pop


graph twoway (line DeathsByCarPer100k year if countrystr == "Australia", msize(tiny) msymbol(triangle_hollow)) (line DeathsByCarPer100k year if countrystr == "Canada", msize(tiny) msymbol(square_hollow)) (line DeathsByCarPer100k year if countrystr == "UK", msize(tiny) msymbol(circle_hollow)) (line DeathsByCarPer100k year if countrystr == "USA" , msize(tiny) msymbol(diamond_hollow)) if sex == 1 & agecat ==1 & ExternalD == 1 & DeathsByCarPer100k >0 & year >=1960 , by(agecat, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0)) title(Car Accidents Crude Mortality Rate Males)

graph export "C:\Users\bz22\Desktop\ComparativeMortality\output\WHOvsOECD\WHOStataGraphs\CarDeathsCrudeMortalityMales.pdf", as(pdf) name("Graph") replace


graph twoway (line DeathsByCarPer100k year if countrystr == "Australia", msize(tiny) msymbol(triangle_hollow)) (line DeathsByCarPer100k year if countrystr == "Canada", msize(tiny) msymbol(square_hollow)) (line DeathsByCarPer100k year if countrystr == "UK", msize(tiny) msymbol(circle_hollow)) (line DeathsByCarPer100k year if countrystr == "USA" , msize(tiny) msymbol(diamond_hollow)) if sex == 2 & agecat ==1 & ExternalD == 1 & DeathsByCarPer100k >0 & year >=1960 , by(agecat, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0)) title(Car Accidents Crude Mortality Rate Females)

graph export "C:\Users\bz22\Desktop\ComparativeMortality\output\WHOvsOECD\WHOStataGraphs\CarDeathsCrudeMortalityFemales.pdf", as(pdf) name("Graph") replace
