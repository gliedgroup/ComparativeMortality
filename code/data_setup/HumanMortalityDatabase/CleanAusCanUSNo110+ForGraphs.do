use "C:\Users\bz22\Desktop\ComparativeMortalityData\Pre1960 Countries\DeathsAndPop\AusCanUSNo110+.dta"


gen agecat2str = "5-14" if age >= 5 & age <15
replace agecat2str = "15-24" if age >= 15 & age < 25
replace agecat2str = "25-34" if age >= 25 & age < 35
replace agecat2str = "35-44" if age >= 35 & age < 45
replace agecat2str = "45-54" if age >= 45 & age < 55
replace agecat2str = "55-64" if age >= 55 & age < 65
replace agecat2str = "65-74" if age >= 65 & age < 75
replace agecat2str = "75-84" if age >= 75 & age < 85

 save "C:\Users\bz22\Desktop\ComparativeMortalityData\Pre1960 Countries\DeathsAndPop\AusCanUSNo110+AgeCat2Str.dta"


egen femalepopbyagecat2 = sum(femalepop), by(year country agecat2str)
egen malepopbyagecat2 = sum(malepop) , by(year country agecat2str)
egen maledeathsbyagecat2 = sum(maledeaths), by(year country agecat2str)
egen femaledeathsbyagecat2 = sum(femaledeaths), by(year country agecat2str)

egen totalfemalepop = sum(femalepop) ,by(year country)
egen totalmalepop = sum(malepop) ,by(year country)

gen femaleprop = femalepopbyagecat2/totalfemalepop
gen maleprop = malepopbyagecat2/totalmalepop

gen WeightedMortalityPer100kMales = maleprop*maledeathsbyagecat2*100000/malepopbyagecat2

gen WeightedMortalityPer100kFemales = femaleprop*femaledeathsbyagecat2*100000/femalepopbyagecat2

save "C:\Users\bz22\Desktop\ComparativeMortalityData\Pre1960 Countries\DeathsAndPop\AusCanUSNo110+AgeCat2StrReadyForBars.dta"
