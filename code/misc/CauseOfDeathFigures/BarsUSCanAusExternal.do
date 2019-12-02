use "C:\Users\bz22\Desktop\ComparativeMortalityData\RandomStatistics\CoDandPopulation\WHODirect\AllAgesAllCauses\ExternalCausePer100kByAge5_85\ExternalCauses.dta"

graph twoway bar WeightedECMortalityPer100kByAge year if sex == 1 & agecat == 7 , by(countrystr)


global agecat "7(5-9) 8(10-14) 9(15-19)"
foreach x in $agecat{
  local i = substr("`x'",1,1)
  local j = substr("`x'", 2, .)
  graph twoway bar WeightedECMortalityPer100kByAge country if sex == 1 & agecat == `i' & YearMult10==0, by(year, title(`j' Male)) xlab(, valuelabel labsize(small)) scale(0.5)
  graph export "C:/Users/bz22/Desktop/ComparativeMortality/output/ExternalCauseGraphsNoUK/`j'Male.pdf", as(pdf) name("Graph") replace
}

global agecat2 "10(20-24) 11(25-29) 12(30-34) 13(35-39) 14(40-44) 15(45-49) 16(50-54) 17(55-59) 18(60-64) 19(65-69) 20(70-74) 21(75-79) 22(80-84)"
foreach x in $agecat2{
  local i = substr("`x'",1,2)
  local j = substr("`x'", 3, .)
  graph twoway bar WeightedECMortalityPer100kByAge country if sex == 1 & agecat == `i' & YearMult10==0, by(year, title(`j' Male)) xlab(, valuelabel labsize(small)) scale(0.5)
  graph export "C:/Users/bz22/Desktop/ComparativeMortality/output/ExternalCauseGraphsNoUK/`j'Male.pdf", as(pdf) name("Graph") replace
}


global agecat "7(5-9) 8(10-14) 9(15-19)"
foreach x in $agecat{
  local i = substr("`x'",1,1)
  local j = substr("`x'", 2, .)
  graph twoway bar WeightedECMortalityPer100kByAge country if sex == 2 & agecat == `i' & YearMult10==0, by(year, title(`j' Female)) xlab(, valuelabel labsize(small)) scale(0.5)
  graph export "C:/Users/bz22/Desktop/ComparativeMortality/output/ExternalCauseGraphsNoUK/`j'Female.pdf", as(pdf) name("Graph") replace
}

global agecat2 "10(20-24) 11(25-29) 12(30-34) 13(35-39) 14(40-44) 15(45-49) 16(50-54) 17(55-59) 18(60-64) 19(65-69) 20(70-74) 21(75-79) 22(80-84)"
foreach x in $agecat2{
  local i = substr("`x'",1,2)
  local j = substr("`x'", 3, .)
  graph twoway bar WeightedECMortalityPer100kByAge country if sex == 2 & agecat == `i' & YearMult10==0, by(year, title(`j' Female)) xlab(, valuelabel labsize(small)) scale(0.5)
  graph export "C:/Users/bz22/Desktop/ComparativeMortality/output/ExternalCauseGraphsNoUK/`j'Female.pdf", as(pdf) name("Graph") replace
}



graph twoway bar WeightedECMortalityPer100kByAge year if sex == 1 & agecat == 7 & YearMult10==0, over(country, title(5-9 Male)) xlab(, valuelabel labsize(small))
