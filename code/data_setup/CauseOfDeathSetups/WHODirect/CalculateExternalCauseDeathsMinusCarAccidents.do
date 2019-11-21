global caraccidentcodes "A138 A139 B47 B471 B472"
*caraccidentcodes are codes for motor vehicle or other transport accidents

gen CarD = 0
foreach c in $caraccidentcodes{
  replace CarD = 1 if cause == "`c'"
}

global caraccidentcode10 "V"
foreach c in $caraccidentcode10{
  replace CarD = 1 if strpos(cause, "`c'")
}

egen DeathsByCar = sum(deaths) if CarD == 1, by(country year sex agecat)

gen ExternalDeathsNoCar = DeathsByExternalInternalCauses-DeathsByCar if ExternalD == 1

gen ExternalDeathsNoCarMortPer100k = ExternalDeathsNoCar*100000/pop

graph twoway (line ExternalDeathsNoCarMortPer100k year if countrystr == "Australia", msize(tiny) msymbol(triangle_hollow)) (line ExternalDeathsNoCarMortPer100k year if countrystr == "Canada", msize(tiny) msymbol(square_hollow)) (line ExternalDeathsNoCarMortPer100k year if countrystr == "UK", msize(tiny) msymbol(circle_hollow)) (line ExternalDeathsNoCarMortPer100k year if countrystr == "USA" , msize(tiny) msymbol(diamond_hollow)) if sex == 1 & agecat ==1 & ExternalD == 1 & ExternalDeathsNoCarMortPer100k >0 & year >=1960 , by(agecat, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0)) title(External Cause No Car Accidents Crude Mortality Rate Males)

graph export "C:\Users\bz22\Desktop\ComparativeMortality\output\WHOvsOECD\WHOStataGraphs\ExternalCauseNoCarsCrudeMortalityMales.pdf", as(pdf) name("Graph")


graph twoway (line ExternalDeathsNoCarMortPer100k year if countrystr == "Australia", msize(tiny) msymbol(triangle_hollow)) (line ExternalDeathsNoCarMortPer100k year if countrystr == "Canada", msize(tiny) msymbol(square_hollow)) (line ExternalDeathsNoCarMortPer100k year if countrystr == "UK", msize(tiny) msymbol(circle_hollow)) (line ExternalDeathsNoCarMortPer100k year if countrystr == "USA" , msize(tiny) msymbol(diamond_hollow)) if sex == 2 & agecat ==1 & ExternalD == 1 & ExternalDeathsNoCarMortPer100k >0 & year >=1960 , by(agecat, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0)) title(External Cause No Car Accidents Crude Mortality Rate Females)

graph export "C:\Users\bz22\Desktop\ComparativeMortality\output\WHOvsOECD\WHOStataGraphs\ExternalCauseNoCarsCrudeMortalityFemales.pdf", as(pdf) name("Graph")
