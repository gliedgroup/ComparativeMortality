use "C:\Users\bz22\Desktop\ComparativeMortalityData\RandomStatistics\PopulationByAge\StandardAge\US1950PopStandard.dta"


gen BroadAgeCat = 0 if agecat <10
replace BroadAgeCat = 1 if agecat >=10 & agecat < 19
replace BroadAgeCat = 2 if agecat >=19
label define BroadAgeCat 0 "<20" 1 "20-64" 2 "65+"
label values BroadAgeCat BroadAgeCat

drop agecat proportion

egen PopByBroadAgeCat = sum(popagecat2), by(BroadAgeCat) ??????
