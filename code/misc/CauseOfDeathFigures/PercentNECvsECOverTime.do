use "C:\Users\bz22\Desktop\ComparativeMortalityData\MortalityFromExternalAndNonExternalCauses\AnglophoneAllYearsSummed.dta"

graph twoway (line PctNECMortality year if country == "Australia") (line PctNECMortality year if country == "Canada") (line PctNECMortality year if country == "United Kingdom") (line PctNECMortality year if country == "United States of America")

graph twoway (line PctNECMortality year if country == "Australia") (line PctNECMortality year if country == "Canada") (line PctNECMortality year if country == "United Kingdom") (line PctNECMortality year if country == "United States of America") if sex == 1,  by(agecat3, title(Male Percentage of Deaths NonExternal Cause Mortality By Age, size(small)))  legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel( .4 (.2) 1, ang(0))

graph export "C:\Users\bz22\Desktop\ComparativeMortalityData\MortalityFromNonExternalCauses\MalePercentageOfDeathsNonExternalCauseByAge.pdf", as(pdf) name("Graph") replace

graph twoway (line PctNECMortality year if country == "Australia") (line PctNECMortality year if country == "Canada") (line PctNECMortality year if country == "United Kingdom") (line PctNECMortality year if country == "United States of America") if sex == 2,  by(agecat3, title(Female Percentage of Deaths From NonExternal Causes By Age, size(small)))  legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel( .4 (.2) 1, ang(0))



graph export "C:\Users\bz22\Desktop\ComparativeMortalityData\MortalityFromNonExternalCauses\FemalePercentageOfDeathsNonExternalCauseByAge.pdf", as(pdf) name("Graph") replace
