use "C:\Users\bz22\Desktop\ComparativeMortalityData\RandomStatistics\CoDandPopulation\WHODirect\EliminateDoubleCounting\AnglophoneAllYears.dta"
drop if cause == "A000" & list == "07A"
drop if cause == "A000" & list == "08A"
drop if cause == "B00" & list == "09B"
drop if cause == "AAA" & list == "104"
gen LetterFirstCauseDummy = uisletter(cause) if list == "07A" | list == "08A" | list == "09B"
drop if LetterFirstCauseDummy == 0

egen alldeaths = sum(deaths), by(country year sex agecat3)
gen alldeaths2 = alldeaths
replace alldeaths2 = alldeaths * 2 if list == "07A" | "08A"
gen mortality = alldeaths2/pop

graph twoway (line alldeaths year if country == "Australia", msize(tiny) msymbol(triangle_hollow)) (line alldeaths year if country == "Canada", msize(tiny) msymbol(square_hollow)) (line alldeaths year if country == "United Kingdom", msize(tiny) msymbol(circle_hollow)) (line alldeaths year if country == "United States of America" , msize(tiny) msymbol(diamond_hollow)) if sex == 1 , by(agecat3, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0))


graph twoway (line alldeaths2 year if country == "Australia", msize(tiny) msymbol(triangle_hollow)) (line alldeaths2 year if country == "Canada", msize(tiny) msymbol(square_hollow)) (line alldeaths2 year if country == "United Kingdom", msize(tiny) msymbol(circle_hollow)) (line alldeaths2 year if country == "United States of America" , msize(tiny) msymbol(diamond_hollow)) if sex == 1 , by(agecat3, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0))
graph twoway (line mortality year if country == "Australia", msize(tiny) msymbol(triangle_hollow)) (line mortality year if country == "Canada", msize(tiny) msymbol(square_hollow)) (line mortality year if country == "United Kingdom", msize(tiny) msymbol(circle_hollow)) (line mortality year if country == "United States of America" , msize(tiny) msymbol(diamond_hollow)) if sex == 1 , by(agecat3, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0))




graph twoway (scatter alldeaths2 year if country == "Australia", msize(tiny) msymbol(triangle_hollow)), by(agecat3 sex, r) ylabel(, ang(0))



graph twoway (line mortality year if country == "Australia", msize(tiny) msymbol(triangle_hollow)) (line mortality year if country == "Canada", msize(tiny) msymbol(square_hollow)) (line mortality year if country == "United Kingdom", msize(tiny) msymbol(circle_hollow)) (line mortality year if country == "United States of America" , msize(tiny) msymbol(diamond_hollow)) if sex == 1 , by(agecat3, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0))
