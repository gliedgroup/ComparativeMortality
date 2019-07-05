*gen new vars from strings
rename sex sexstr
rename country countrystr
encode countrystr, generate(country)
encode sexstr, generate(sex)

*gen birth year
gen birthyear  = Year - Age

*gen birthyear decade
gen birthyear2 = birthyear-5
gen birthdecade = round(birthyear2, 10)
drop birthyear2

*gen Agecat
gen Agecat = 0 if Age < 10
replace Agecat = 1 if Age >=10 & Age < 20
replace Agecat = 2 if Age >=20 & Age < 30
replace Agecat = 3 if Age >= 30 & Age < 40
replace Agecat = 4 if Age >= 40 & Age <50
replace Agecat = 5 if Age >= 50 & Age < 60
replace Agecat = 6 if Age >= 60 & Age <70
replace Agecat = 7 if Age >= 70 & Age < 80
replace Agecat = 8 if Age >= 80

label define Agecat 0 "LessThan10" 1 "10-19" 2 "20-29" 3 "30-39" 4 "40-49" 5 "50-59" 6 "60-69" 7 "70-79" 8 "80"
label values Agecat Agecat
