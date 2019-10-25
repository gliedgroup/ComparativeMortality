use "C:\Users\bz22\Desktop\ComparativeMortalityData\RandomStatistics\CoDandPopulation\WHODirect\AnglophoneAllYears.dta"

egen alldeaths = sum(deaths), by(code year sex agecat3 frmat)
gen mortality = alldeaths/pop

graph twoway (line mortality year if country == "Australia", msize(tiny) msymbol(triangle_hollow)) (line mortality year if country == "Canada", msize(tiny) msymbol(square_hollow)) (line mortality year if country == "United Kingdom", msize(tiny) msymbol(circle_hollow)) (line mortality year if country == "United States of America" , msize(tiny) msymbol(diamond_hollow)) if sex == 1 & frmat == 1, by(agecat3, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0))
