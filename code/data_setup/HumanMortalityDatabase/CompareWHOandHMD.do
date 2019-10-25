
gen agecat3 = .
replace agecat3 = 1 if Age >=5& Age <10
replace agecat3 = 2 if Age >=10 & Age <15
replace agecat3 = 3 if Age >= 15 & Age < 20
replace agecat3 = 4 if Age >=20 & Age <25
replace agecat3 = 5 if Age >= 25 & Age < 30
replace agecat3 = 6 if Age >=30 & Age < 35
replace agecat3 = 7 if Age>= 35 & Age < 40
replace agecat3 = 8 if Age>= 40 & Age<45
replace agecat3 = 9 if Age >= 45 & Age < 50
replace agecat3 = 10 if Age >= 50 & Age< 55
replace agecat3 = 11 if Age >= 55 & Age < 60
replace agecat3 = 12 if Age >= 60 & Age <65
replace agecat3 = 13 if Age >= 65 & Age <70
replace agecat3 = 14 if Age >= 70 & Age <75
replace agecat3 = 15 if Age >= 75 & Age <80
replace agecat3 = 16 if Age >= 80

label define agecat3 1 "5-9" 2 "10-14" 3 "15-19" 4 "20-24" 5 "25-29" 6 "30-34" 7 "35-39" 8 "40-44" 9 "45-49" 10 "50-54" 11 "55-59" 12 "60-64" 13 "65-69" 14 "70-74" 15 "75-79" 16 "80-84"
label values agecat3 agecat3

egen lnMortalityByAge = median(lnMortality), by(country Year sex agecat3)
egen MortalityByAge = mean(Mortality), by(country Year sex agecat3)

graph twoway (line MortalityByAge Year if countrystr == "Australia", msize(tiny) msymbol(triangle_hollow)) (line MortalityByAge Year if countrystr == "Canada", msize(tiny) msymbol(square_hollow)) (line MortalityByAge Year if countrystr == "UK", msize(tiny) msymbol(circle_hollow)) (line MortalityByAge Year if countrystr == "USA" , msize(tiny) msymbol(diamond_hollow)) if sex == 1 & Year >1950, by(agecat3, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0))


graph twoway (line lnMortalityByAge Year if countrystr == "Australia", msize(tiny) msymbol(triangle_hollow)) (line lnMortalityByAge Year if countrystr == "Canada", msize(tiny) msymbol(square_hollow)) (line lnMortalityByAge Year if countrystr == "UK", msize(tiny) msymbol(circle_hollow)) (line lnMortalityByAge Year if countrystr == "USA" , msize(tiny) msymbol(diamond_hollow)) if agecat3 >=7 & agecat3 <=12 , by(sex agecat3, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0))

graph twoway (line lnMortalityByAge Year if countrystr == "Australia", msize(tiny) msymbol(triangle_hollow)) (line lnMortalityByAge Year if countrystr == "Canada", msize(tiny) msymbol(square_hollow)) (line lnMortalityByAge Year if countrystr == "UK", msize(tiny) msymbol(circle_hollow)) (line lnMortalityByAge Year if countrystr == "USA" , msize(tiny) msymbol(diamond_hollow)) if sex == 1 , by(agecat3, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0))


gen logMx = log(mx)
egen logMxByAge = median(logMx), by(country Year sex agecat3)
graph twoway (line logMxByAge Year if countrystr == "Australia", msize(tiny) msymbol(triangle_hollow)) (line logMxByAge Year if countrystr == "Canada", msize(tiny) msymbol(square_hollow)) (line logMxByAge Year if countrystr == "UK", msize(tiny) msymbol(circle_hollow)) (line logMxByAge Year if countrystr == "USA" , msize(tiny) msymbol(diamond_hollow)) if agecat3 >=7 & agecat3 <=12 , by(sex agecat3, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0))

egen mx2 = mean(mx), by(country Year sex agecat3)

graph twoway (line mx2 Year if countrystr == "Australia", msize(tiny) msymbol(triangle_hollow)) (line mx2 Year if countrystr == "Canada", msize(tiny) msymbol(square_hollow)) (line mx2 Year if countrystr == "UK", msize(tiny) msymbol(circle_hollow)) (line mx2 Year if countrystr == "USA" , msize(tiny) msymbol(diamond_hollow)) if agecat3 >=7 & agecat3 <=12 , by(sex agecat3, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0))


gen test = dx/Lx
egen test2 = mean(test), by(country Year sex agecat3)
gen logtest2 = log(test2)
graph twoway (line test2 Year if countrystr == "Australia", msize(tiny) msymbol(triangle_hollow)) (line test2 Year if countrystr == "Canada", msize(tiny) msymbol(square_hollow)) (line test2 Year if countrystr == "UK", msize(tiny) msymbol(circle_hollow)) (line test2 Year if countrystr == "USA" , msize(tiny) msymbol(diamond_hollow)) if agecat3 >=7 & agecat3 <=12 , by(sex agecat3, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0))
graph twoway (line logtest2 Year if countrystr == "Australia", msize(tiny) msymbol(triangle_hollow)) (line logtest2 Year if countrystr == "Canada", msize(tiny) msymbol(square_hollow)) (line logtest2 Year if countrystr == "UK", msize(tiny) msymbol(circle_hollow)) (line logtest2 Year if countrystr == "USA" , msize(tiny) msymbol(diamond_hollow)) if agecat3 >=7 & agecat3 <=12 , by(sex agecat3, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0))

graph twoway (line logtest2 Year if countrystr == "Australia", msize(tiny) msymbol(triangle_hollow)) (line logtest2 Year if countrystr == "Canada", msize(tiny) msymbol(square_hollow)) (line logtest2 Year if countrystr == "UK", msize(tiny) msymbol(circle_hollow)) (line logtest2 Year if countrystr == "USA" , msize(tiny) msymbol(diamond_hollow)) if sex==3, by(agecat3, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0))


graph twoway (line logtest2 Year if countrystr == "Australia", msize(tiny) msymbol(triangle_hollow)) (line logtest2 Year if countrystr == "Canada", msize(tiny) msymbol(square_hollow)) (line logtest2 Year if countrystr == "UK", msize(tiny) msymbol(circle_hollow)) (line logtest2 Year if countrystr == "USA" , msize(tiny) msymbol(diamond_hollow)) if sex==1, by(agecat3, r) legend(label(1 Australia) label(2 Canada) label(3 UK) label(4 USA)) ylabel(, ang(0))
