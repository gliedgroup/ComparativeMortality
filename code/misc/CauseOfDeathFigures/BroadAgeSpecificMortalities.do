*code for agecategories of <20 20-64 and 65+

use "C:\Users\bz22\Desktop\ComparativeMortalityData\RandomStatistics\CoDandPopulation\WHODirect\AllAgesAllCauses\ICD7-10AngloWideEliminatedTripleCountingAddUSCanadaMalesAndFemalesPost2006.dta"

drop if agecat == 1 | agecat == 26

save "C:\Users\bz22\Desktop\ComparativeMortalityData\RandomStatistics\CoDandPopulation\WHODirect\AllAgesAllCauses\ICD7-10AngloWideEliminatedTripleCountingAddUSCanadaMalesAndFemalesPost2006DroppedAllAgesAndUnknown.dta"

gen BroadAgeCat = 0 if agecat <10
replace BroadAgeCat = 1 if agecat >=10 & agecat < 19
replace BroadAgeCat = 2 if agecat >=19
label define BroadAgeCat 0 "<20" 1 "20-64" 2 "65+"
label values BroadAgeCat BroadAgeCat

egen BroadAgeCatDeaths = sum(deaths), by(year countrystr sex BroadAgeCat)
egen BroadAgeCatPop = sum(pop), by(year countrystr sex BroadAgeCat)

gen AllCauseByBroadAgeCatPer100k = BroadAgeCatDeaths*100000/BroadAgeCatPop

merge m:1 sex BroadAgeCat using  "C:\Users\bz22\Desktop\ComparativeMortalityData\RandomStatistics\PopulationByAge\StandardAge\US1950PopStandardBroadAgeCats.dta"

gen



graph twoway (line AllCauseByBroadAgeCatPer100k year if countrystr == "Australia") (line AllCauseByBroadAgeCatPer100k year if countrystr == "Canada") (line AllCauseByBroadAgeCatPer100k year if countrystr == "UK") (line AllCauseByBroadAgeCatPer100k year if countrystr == "USA") if sex == 1 & AllCauseByBroadAgeCatPer100k > 0, by(BroadAgeCat) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0)) title(All Cause Mortality By Broad Age Categories, Males)
