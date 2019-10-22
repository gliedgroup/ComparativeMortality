use "C:\Users\bz22\Desktop\ComparativeMortalityData\MortalityFromExternalAndNonExternalCauses\AnglophoneAllYearsSummed.dta"

graph twoway (line PctExternalMortality year if country == "Australia", msize(small) msymbol(triangle_hollow)) (line PctExternalMortality year if country == "Canada", msize(small) msymbol(square_hollow)) (line PctExternalMortality year if country == "United Kingdom", msize(small) msymbol(circle_hollow)) (line PctExternalMortality year if country == "United States of America" , msize(small) msymbol(diamond_hollow)), by(sex agecat3, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0))

graph export "C:\Users\bz22\Desktop\ComparativeMortalityData\MortalityFromExternalAndNonExternalCauses\PctExternalMortalityRate.pdf", as(pdf) name("Graph")

graph twoway (line PctNECMortality year if country == "Australia", msize(small) msymbol(triangle_hollow)) (line PctNECMortality year if country == "Canada", msize(small) msymbol(square_hollow)) (line PctNECMortality year if country == "United Kingdom", msize(small) msymbol(circle_hollow)) (line PctNECMortality year if country == "United States of America" , msize(small) msymbol(diamond_hollow)), by(sex agecat3, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0))

graph export "C:\Users\bz22\Desktop\ComparativeMortalityData\MortalityFromExternalAndNonExternalCauses\PctNonExternalMortalityRate.pdf", as(pdf) name("Graph")

graph twoway (line ECMortalityRate year if country == "Australia", msize(small) msymbol(triangle_hollow)) (line ECMortalityRate year if country == "Canada", msize(small) msymbol(square_hollow)) (line ECMortalityRate year if country == "United Kingdom", msize(small) msymbol(circle_hollow)) (line ECMortalityRate year if country == "United States of America" , msize(small) msymbol(diamond_hollow)), by(sex agecat3, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0))

graph export "C:\Users\bz22\Desktop\ComparativeMortalityData\MortalityFromExternalAndNonExternalCauses\ExternalMortalityRate.pdf", as(pdf) name("Graph")


graph twoway (line NECMortalityRate year if country == "Australia", msize(small) msymbol(triangle_hollow)) (line NECMortalityRate year if country == "Canada", msize(small) msymbol(square_hollow)) (line NECMortalityRate year if country == "United Kingdom", msize(small) msymbol(circle_hollow)) (line NECMortalityRate year if country == "United States of America" , msize(small) msymbol(diamond_hollow)), by(sex agecat3, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0))

graph export "C:\Users\bz22\Desktop\ComparativeMortalityData\MortalityFromExternalAndNonExternalCauses\NonExternalMortalityRate.pdf", as(pdf) name("Graph")


graph twoway (line TotalMortalityRate year if country == "Australia", msize(small) msymbol(triangle_hollow)) (line TotalMortalityRate year if country == "Canada", msize(small) msymbol(square_hollow)) (line TotalMortalityRate year if country == "United Kingdom", msize(small) msymbol(circle_hollow)) (line TotalMortalityRate year if country == "United States of America" , msize(small) msymbol(diamond_hollow)), by(sex agecat3, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0))

graph export "C:\Users\bz22\Desktop\ComparativeMortalityData\MortalityFromExternalAndNonExternalCauses\TotalMortalityRate.pdf", as(pdf) name("Graph")



graph twoway (line logECMortalityRate year if country == "Australia", msize(tiny) msymbol(triangle_hollow)) (line logECMortalityRate year if country == "Canada", msize(tiny) msymbol(square_hollow)) (line logECMortalityRate year if country == "United Kingdom", msize(tiny) msymbol(circle_hollow)) (line logECMortalityRate year if country == "United States of America" , msize(tiny) msymbol(diamond_hollow)), by(sex agecat3, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0))

graph export "C:\Users\bz22\Desktop\ComparativeMortalityData\MortalityFromExternalAndNonExternalCauses\logECMortalityRate.pdf", as(pdf) name("Graph")


graph twoway (line logNECMortalityRate year if country == "Australia", msize(tiny) msymbol(triangle_hollow)) (line logNECMortalityRate year if country == "Canada", msize(tiny) msymbol(square_hollow)) (line logNECMortalityRate year if country == "United Kingdom", msize(tiny) msymbol(circle_hollow)) (line logNECMortalityRate year if country == "United States of America" , msize(tiny) msymbol(diamond_hollow)), by(sex agecat3, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0))

graph export "C:\Users\bz22\Desktop\ComparativeMortalityData\MortalityFromExternalAndNonExternalCauses\logNECMortalityRate.pdf", as(pdf) name("Graph")


graph twoway (line logTotalMortalityRate year if country == "Australia", msize(tiny) msymbol(triangle_hollow)) (line logTotalMortalityRate year if country == "Canada", msize(tiny) msymbol(square_hollow)) (line logTotalMortalityRate year if country == "United Kingdom", msize(tiny) msymbol(circle_hollow)) (line logTotalMortalityRate year if country == "United States of America" , msize(tiny) msymbol(diamond_hollow)), by(sex agecat3, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0))

graph export "C:\Users\bz22\Desktop\ComparativeMortalityData\MortalityFromExternalAndNonExternalCauses\logTotalMortalityRate.pdf", as(pdf) name("Graph")
