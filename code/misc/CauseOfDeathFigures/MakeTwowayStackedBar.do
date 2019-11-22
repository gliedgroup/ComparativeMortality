/*
graph twoway (bar ExIntCauseMortalityPer100k year if sex == 1 & agecat == 1 & ExternalD == 1) (bar ExIntCauseMortalityPer100k year if sex == 1 & agecat == 1 & ExternalD == 0), by(countrystr)

graph twoway (rbar ExIntCauseMortalityPer100k year if sex == 1 & agecat == 1 & ExternalD == 1) (rbar ExIntCauseMortalityPer100k year if sex == 1 & agecat == 1 & ExternalD == 0), by(countrystr)

graph twoway (rbar ExIntCauseMortalityPer100k ExternalD year if sex == 1 & agecat == 1 ) , by(countrystr)

graph twoway (bar ExIntCauseMortalityPer100k year if ExternalD == 0) (bar ExIntCauseMortalityPer100k year if ExternalD ==1) if sex ==1 & agecat==1, by(countrystr) stack
*/

graph twoway (bar AllCauseMortalityPer100k  year) (bar ExIntCauseMortalityPer100k year if ExternalD ==1) if sex ==1 & agecat==1, by(countrystr) legend(label(1 InternalCauseMortalityPer100k) label(2 ExternalCauseMortalityPer100k)) title(Male Crude Mortality Per 100k)

graph export "C:\Users\bz22\Desktop\ComparativeMortality\output\WHOvsOECD\WHOStataGraphs\StackedBarPlotsMen.pdf", as(pdf) name("Graph") replace

graph twoway (bar AllCauseMortalityPer100k  year) (bar ExIntCauseMortalityPer100k year if ExternalD ==1) if sex ==2 & agecat==1, by(countrystr) legend(label(1 InternalCauseMortalityPer100k) label(2 ExternalCauseMortalityPer100k)) title(Female Crude Mortality Per 100k)


graph export "C:\Users\bz22\Desktop\ComparativeMortality\output\WHOvsOECD\WHOStataGraphs\StackedBarPlotsWomen.pdf", as(pdf) name("Graph") replace
