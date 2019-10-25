use "C:\Users\bz22\Desktop\ComparativeMortalityData\RandomStatistics\CoDandPopulation\WHODirect\EliminateDoubleCounting\AnglophoneAllYears.dta"
keep if cause == "A000" | cause == "B00" | list == "104"

egen alldeaths = sum(deaths), by(country year sex agecat3)
graph twoway (scatter alldeaths year if country == "Australia", msize(tiny) msymbol(triangle_hollow)), by(agecat3 sex, r) ylabel(, ang(0))
