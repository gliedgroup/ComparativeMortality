use "C:\Users\bz22\Desktop\ComparativeMortalityData\RandomStatistics\CoDandPopulation\WHODirect\AllAgesAllCauses\ICD7-10NoUKWideEliminatedTripleCountingAddUSCanadaMalesAndFemalesPost2006DroppedAllAgesAndUnknown.dta"

egen AllExternalCauseDeaths = sum(DeathsByExternalInternalCauses) if ExternalD == 1, by(year country sex)

/*global agecat "7a 8b 9c 10d 11e 12f 13g 14h 15i 16j 17k 18l 19m 20n 21o 22p"

foreach x in $agecat{
  local i = substr("`x'", 1,1)
  local j = substr("`x'", 2,1)
  egen `i' = sum(ExIntCauseMortalityPer100k) if ExternalD == 1 & agecat >= 7 & agecat <= `j', by(year country sex)

} */



preserve
collapse (mean) pop DeathsByExternalInternalCauses if ExternalD == 1, by(year countrystr sex agecat ExternalD)

drop if agecat < 7 | agecat > 22

egen TotalPop5_85 = sum(pop) if ExternalD == 1 & agecat >=7 & agecat <= 22, by(year country sex)
egen TotalExternalCauseDeaths5_85= sum(DeathsByExternalInternalCauses) if ExternalD == 1 & agecat >=7 & agecat <= 22, by(year country sex)

gen ECMortalityPer100kByAge = DeathsByExternalInternalCauses*100000/pop

gen PropByAgePop5_85 = pop/TotalPop5_85

gen WeightedECMortalityPer100kByAge = ECMortalityPer100kByAge*PropByAgePop5_85

/*global agecat "8b 9c 10d 11e 12f 13g 14h 15i 16j 17k 18l 19m 20n 21o 22p"
egen a = sum(WeightedECMortalityPer100kByAge) if ExternalD == 1 & agecat == 7, by(year countrystr sex)
foreach x in $agecat{
  local i = substr("`x'", 1,1)
  local j = substr("`x'", 2,1)
  egen `j' = sum(WeightedECMortalityPer100kByAge) if ExternalD == 1 & agecat >= 7 & agecat <= `i', by(year countrystr sex)

} */


egen a = sum(WeightedECMortalityPer100kByAge) if ExternalD == 1 & agecat == 7, by(year country sex)
egen b = sum(WeightedECMortalityPer100kByAge) if ExternalD == 1 & (agecat == 7 | agecat == 8), by(year country sex)
egen c = sum(WeightedECMortalityPer100kByAge) if ExternalD == 1 & (agecat >= 7 & agecat <= 9), by(year country sex)
egen d = sum(WeightedECMortalityPer100kByAge) if ExternalD == 1 & (agecat >= 7  & agecat <= 10), by(year country sex)
egen e = sum(WeightedECMortalityPer100kByAge) if ExternalD == 1 & (agecat >= 7  & agecat <= 11), by(year country sex)
egen f = sum(WeightedECMortalityPer100kByAge) if ExternalD == 1 & (agecat >= 7  & agecat <=12 ), by(year country sex)
egen g = sum(WeightedECMortalityPer100kByAge) if ExternalD == 1 & (agecat >= 7  & agecat <= 13), by(year country sex)
egen h = sum(WeightedECMortalityPer100kByAge) if ExternalD == 1 & (agecat >= 7  & agecat <= 14), by(year country sex)
egen i = sum(WeightedECMortalityPer100kByAge) if ExternalD == 1 & (agecat >= 7  & agecat <=15 ), by(year country sex)
egen j = sum(WeightedECMortalityPer100kByAge) if ExternalD == 1 & (agecat >= 7  & agecat <= 16), by(year country sex)
egen k = sum(WeightedECMortalityPer100kByAge) if ExternalD == 1 & (agecat >= 7  & agecat <= 17), by(year country sex)
egen l = sum(WeightedECMortalityPer100kByAge) if ExternalD == 1 & (agecat >= 7  & agecat <= 18), by(year country sex)
egen m = sum(WeightedECMortalityPer100kByAge) if ExternalD == 1 & (agecat >= 7 & agecat <= 19), by(year country sex)
egen n = sum(WeightedECMortalityPer100kByAge) if ExternalD == 1 & (agecat >= 7 & agecat <= 20), by(year country sex)
egen o = sum(WeightedECMortalityPer100kByAge) if ExternalD == 1 & (agecat >= 7 & agecat <= 21), by(year country sex)
egen p = sum(WeightedECMortalityPer100kByAge) if ExternalD == 1 & (agecat >= 7  & agecat <= 22), by(year country sex)


gen YearMult10 = mod(year , 10)
/*
gen country = 0.1 if countrystr == "Australia"
replace country = 0.2 if countrystr == "Canada"
replace country = 0.3 if countrystr == "USA"

label define country2 0.1 "Australia" 0.2 "Canada" 0.3 "USA"

label values country country */

encode countrystr, gen(country)

*Males

graph twoway (bar p country) (bar o country) (bar n country) (bar m country) (bar l country) (bar k country) (bar j country) (bar i country) (bar h country) (bar g country) (bar f country) (bar e country) (bar d country) (bar c country) (bar b country) (bar a country) if sex == 1 & year == 1950 ,  legend(label(1 80-84/5-9) label(2 75-79) label(3 70-74) label (4 65-69) label(5 60-64) label(6 55-59) label(7 50-54) label(8 45-49) label(9 40-44) label(10 35-39) label(11 30-34) label(12 25-29) label(13 20-24) label(14 15-19) label(15 10-14)) ylab(0 35 70 105 140, ang(0)) xlab(, valuelabel) title(1950 Males) scale(0.3)

graph export "C:\Users\bz22\Desktop\ComparativeMortality\output\ExternalCauseGraphsNoUK\1950Males.pdf", as(pdf) name("Graph")


graph twoway (bar p country) (bar o country) (bar n country) (bar m country) (bar l country) (bar k country) (bar j country) (bar i country) (bar h country) (bar g country) (bar f country) (bar e country) (bar d country) (bar c country) (bar b country) (bar a country) if sex == 1 & year == 1960 ,  legend(label(1 80-84/5-9) label(2 75-79) label(3 70-74) label (4 65-69) label(5 60-64) label(6 55-59) label(7 50-54) label(8 45-49) label(9 40-44) label(10 35-39) label(11 30-34) label(12 25-29) label(13 20-24) label(14 15-19) label(15 10-14)) ylab(0 35 70 105 140, ang(0)) xlab(, valuelabel) title(1960 Males) scale(0.3)

graph export "C:\Users\bz22\Desktop\ComparativeMortality\output\ExternalCauseGraphsNoUK\1960Males.pdf", as(pdf) name("Graph")



graph twoway (bar p country) (bar o country) (bar n country) (bar m country) (bar l country) (bar k country) (bar j country) (bar i country) (bar h country) (bar g country) (bar f country) (bar e country) (bar d country) (bar c country) (bar b country) (bar a country) if sex == 1 & year == 1970 ,  legend(label(1 80-84/5-9) label(2 75-79) label(3 70-74) label (4 65-69) label(5 60-64) label(6 55-59) label(7 50-54) label(8 45-49) label(9 40-44) label(10 35-39) label(11 30-34) label(12 25-29) label(13 20-24) label(14 15-19) label(15 10-14)) ylab(0 35 70 105 140, ang(0)) xlab(, valuelabel) title(1970 Males) scale(0.3)

graph export "C:\Users\bz22\Desktop\ComparativeMortality\output\ExternalCauseGraphsNoUK\1970Males.pdf", as(pdf) name("Graph")


graph twoway (bar p country) (bar o country) (bar n country) (bar m country) (bar l country) (bar k country) (bar j country) (bar i country) (bar h country) (bar g country) (bar f country) (bar e country) (bar d country) (bar c country) (bar b country) (bar a country) if sex == 1 & year == 1980 ,  legend(label(1 80-84/5-9) label(2 75-79) label(3 70-74) label (4 65-69) label(5 60-64) label(6 55-59) label(7 50-54) label(8 45-49) label(9 40-44) label(10 35-39) label(11 30-34) label(12 25-29) label(13 20-24) label(14 15-19) label(15 10-14)) ylab(0 35 70 105 140, ang(0)) xlab(, valuelabel) title(1980 Males) scale(0.3)

graph export "C:\Users\bz22\Desktop\ComparativeMortality\output\ExternalCauseGraphsNoUK\1980Males.pdf", as(pdf) name("Graph")


graph twoway (bar p country) (bar o country) (bar n country) (bar m country) (bar l country) (bar k country) (bar j country) (bar i country) (bar h country) (bar g country) (bar f country) (bar e country) (bar d country) (bar c country) (bar b country) (bar a country) if sex == 1 & year == 1990 ,  legend(label(1 80-84/5-9) label(2 75-79) label(3 70-74) label (4 65-69) label(5 60-64) label(6 55-59) label(7 50-54) label(8 45-49) label(9 40-44) label(10 35-39) label(11 30-34) label(12 25-29) label(13 20-24) label(14 15-19) label(15 10-14)) ylab(0 35 70 105 140, ang(0)) xlab(, valuelabel) title(1990 Males) scale(0.3)

graph export "C:\Users\bz22\Desktop\ComparativeMortality\output\ExternalCauseGraphsNoUK\1990Males.pdf", as(pdf) name("Graph")


graph twoway (bar p country) (bar o country) (bar n country) (bar m country) (bar l country) (bar k country) (bar j country) (bar i country) (bar h country) (bar g country) (bar f country) (bar e country) (bar d country) (bar c country) (bar b country) (bar a country) if sex == 1 & year == 2000 ,  legend(label(1 80-84/5-9) label(2 75-79) label(3 70-74) label (4 65-69) label(5 60-64) label(6 55-59) label(7 50-54) label(8 45-49) label(9 40-44) label(10 35-39) label(11 30-34) label(12 25-29) label(13 20-24) label(14 15-19) label(15 10-14)) ylab(0 35 70 105 140, ang(0)) xlab(, valuelabel) title(2000 Males) scale(0.3)

graph export "C:\Users\bz22\Desktop\ComparativeMortality\output\ExternalCauseGraphsNoUK\2000Males.pdf", as(pdf) name("Graph")


graph twoway (bar p country) (bar o country) (bar n country) (bar m country) (bar l country) (bar k country) (bar j country) (bar i country) (bar h country) (bar g country) (bar f country) (bar e country) (bar d country) (bar c country) (bar b country) (bar a country) if sex == 1 & year == 2010 ,  legend(label(1 80-84/5-9) label(2 75-79) label(3 70-74) label (4 65-69) label(5 60-64) label(6 55-59) label(7 50-54) label(8 45-49) label(9 40-44) label(10 35-39) label(11 30-34) label(12 25-29) label(13 20-24) label(14 15-19) label(15 10-14)) ylab(0 35 70 105 140, ang(0)) xlab(, valuelabel) title(2010 Males) scale(0.3)

graph export "C:\Users\bz22\Desktop\ComparativeMortality\output\ExternalCauseGraphsNoUK\2010Males.pdf", as(pdf) name("Graph")


* Females


graph twoway (bar p country) (bar o country) (bar n country) (bar m country) (bar l country) (bar k country) (bar j country) (bar i country) (bar h country) (bar g country) (bar f country) (bar e country) (bar d country) (bar c country) (bar b country) (bar a country) if sex == 2 & year == 1950 ,  legend(label(1 80-84/5-9) label(2 75-79) label(3 70-74) label (4 65-69) label(5 60-64) label(6 55-59) label(7 50-54) label(8 45-49) label(9 40-44) label(10 35-39) label(11 30-34) label(12 25-29) label(13 20-24) label(14 15-19) label(15 10-14)) ylab(0 15 30 45 60, ang(0)) xlab(, valuelabel) title(1950 Females) scale(0.3)

graph export "C:\Users\bz22\Desktop\ComparativeMortality\output\ExternalCauseGraphsNoUK\1950Females.pdf", as(pdf) name("Graph") replace


graph twoway (bar p country) (bar o country) (bar n country) (bar m country) (bar l country) (bar k country) (bar j country) (bar i country) (bar h country) (bar g country) (bar f country) (bar e country) (bar d country) (bar c country) (bar b country) (bar a country) if sex == 2 & year == 1960 ,  legend(label(1 80-84/5-9) label(2 75-79) label(3 70-74) label (4 65-69) label(5 60-64) label(6 55-59) label(7 50-54) label(8 45-49) label(9 40-44) label(10 35-39) label(11 30-34) label(12 25-29) label(13 20-24) label(14 15-19) label(15 10-14)) ylab(0 15 30 45 60, ang(0)) xlab(, valuelabel) title(1960 Females) scale(0.3)

graph export "C:\Users\bz22\Desktop\ComparativeMortality\output\ExternalCauseGraphsNoUK\1960Females.pdf", as(pdf) name("Graph") replace



graph twoway (bar p country) (bar o country) (bar n country) (bar m country) (bar l country) (bar k country) (bar j country) (bar i country) (bar h country) (bar g country) (bar f country) (bar e country) (bar d country) (bar c country) (bar b country) (bar a country) if sex == 2 & year == 1970 ,  legend(label(1 80-84/5-9) label(2 75-79) label(3 70-74) label (4 65-69) label(5 60-64) label(6 55-59) label(7 50-54) label(8 45-49) label(9 40-44) label(10 35-39) label(11 30-34) label(12 25-29) label(13 20-24) label(14 15-19) label(15 10-14)) ylab(0 15 30 45 60, ang(0)) xlab(, valuelabel) title(1970 Females) scale(0.3)

graph export "C:\Users\bz22\Desktop\ComparativeMortality\output\ExternalCauseGraphsNoUK\1970Females.pdf", as(pdf) name("Graph") replace


graph twoway (bar p country) (bar o country) (bar n country) (bar m country) (bar l country) (bar k country) (bar j country) (bar i country) (bar h country) (bar g country) (bar f country) (bar e country) (bar d country) (bar c country) (bar b country) (bar a country) if sex == 2 & year == 1980 ,  legend(label(1 80-84/5-9) label(2 75-79) label(3 70-74) label (4 65-69) label(5 60-64) label(6 55-59) label(7 50-54) label(8 45-49) label(9 40-44) label(10 35-39) label(11 30-34) label(12 25-29) label(13 20-24) label(14 15-19) label(15 10-14)) ylab(0 15 30 45 60, ang(0)) xlab(, valuelabel) title(1980 Females) scale(0.3)

graph export "C:\Users\bz22\Desktop\ComparativeMortality\output\ExternalCauseGraphsNoUK\1980Females.pdf", as(pdf) name("Graph") replace


graph twoway (bar p country) (bar o country) (bar n country) (bar m country) (bar l country) (bar k country) (bar j country) (bar i country) (bar h country) (bar g country) (bar f country) (bar e country) (bar d country) (bar c country) (bar b country) (bar a country) if sex == 2 & year == 1990 ,  legend(label(1 80-84/5-9) label(2 75-79) label(3 70-74) label (4 65-69) label(5 60-64) label(6 55-59) label(7 50-54) label(8 45-49) label(9 40-44) label(10 35-39) label(11 30-34) label(12 25-29) label(13 20-24) label(14 15-19) label(15 10-14)) ylab(0 15 30 45 60, ang(0)) xlab(, valuelabel) title(1990 Females) scale(0.3)

graph export "C:\Users\bz22\Desktop\ComparativeMortality\output\ExternalCauseGraphsNoUK\1990Females.pdf", as(pdf) name("Graph") replace


graph twoway (bar p country) (bar o country) (bar n country) (bar m country) (bar l country) (bar k country) (bar j country) (bar i country) (bar h country) (bar g country) (bar f country) (bar e country) (bar d country) (bar c country) (bar b country) (bar a country) if sex == 2 & year == 2000 ,  legend(label(1 80-84/5-9) label(2 75-79) label(3 70-74) label (4 65-69) label(5 60-64) label(6 55-59) label(7 50-54) label(8 45-49) label(9 40-44) label(10 35-39) label(11 30-34) label(12 25-29) label(13 20-24) label(14 15-19) label(15 10-14)) ylab(0 15 30 45 60, ang(0)) xlab(, valuelabel) title(2000 Females) scale(0.3)

graph export "C:\Users\bz22\Desktop\ComparativeMortality\output\ExternalCauseGraphsNoUK\2000Females.pdf", as(pdf) name("Graph") replace


graph twoway (bar p country) (bar o country) (bar n country) (bar m country) (bar l country) (bar k country) (bar j country) (bar i country) (bar h country) (bar g country) (bar f country) (bar e country) (bar d country) (bar c country) (bar b country) (bar a country) if sex == 2 & year == 2010 ,  legend(label(1 80-84/5-9) label(2 75-79) label(3 70-74) label (4 65-69) label(5 60-64) label(6 55-59) label(7 50-54) label(8 45-49) label(9 40-44) label(10 35-39) label(11 30-34) label(12 25-29) label(13 20-24) label(14 15-19) label(15 10-14)) ylab(0 15 30 45 60, ang(0)) xlab(, valuelabel) title(2010 Females) scale(0.3)

graph export "C:\Users\bz22\Desktop\ComparativeMortality\output\ExternalCauseGraphsNoUK\2010Females.pdf", as(pdf) name("Graph") replace

* Over time males
graph twoway (bar p year) (bar o year) (bar n year) (bar m year) (bar l year) (bar k year) (bar j year) (bar i year) (bar h year) (bar g year) (bar f year) (bar e year) (bar d year) (bar c year) (bar b year) (bar a year) if countrystr == "Australia" & sex == 1 , legend(label(1 80-84/5-9) label(2 75-79) label(3 70-74) label (4 65-69) label(5 60-64) label(6 55-59) label(7 50-54) label(8 45-49) label(9 40-44) label(10 35-39) label(11 30-34) label(12 25-29) label(13 20-24) label(14 15-19) label(15 10-14)) ylab(, ang(0)) title(Australia Males)

graph export "C:\Users\bz22\Desktop\ComparativeMortality\output\ExternalCauseGraphsNoUK\AustraliaMales.pdf", as(pdf) name("Graph") replace

graph twoway (bar p year) (bar o year) (bar n year) (bar m year) (bar l year) (bar k year) (bar j year) (bar i year) (bar h year) (bar g year) (bar f year) (bar e year) (bar d year) (bar c year) (bar b year) (bar a year) if countrystr == "Canada" & sex == 1 , legend(label(1 80-84/5-9) label(2 75-79) label(3 70-74) label (4 65-69) label(5 60-64) label(6 55-59) label(7 50-54) label(8 45-49) label(9 40-44) label(10 35-39) label(11 30-34) label(12 25-29) label(13 20-24) label(14 15-19) label(15 10-14)) ylab(, ang(0)) title(Canada Males)

graph export "C:\Users\bz22\Desktop\ComparativeMortality\output\ExternalCauseGraphsNoUK\CanadaMales.pdf", as(pdf) name("Graph") replace

graph twoway (bar p year) (bar o year) (bar n year) (bar m year) (bar l year) (bar k year) (bar j year) (bar i year) (bar h year) (bar g year) (bar f year) (bar e year) (bar d year) (bar c year) (bar b year) (bar a year) if countrystr == "USA" & sex == 1 , legend(label(1 80-84/5-9) label(2 75-79) label(3 70-74) label (4 65-69) label(5 60-64) label(6 55-59) label(7 50-54) label(8 45-49) label(9 40-44) label(10 35-39) label(11 30-34) label(12 25-29) label(13 20-24) label(14 15-19) label(15 10-14)) ylab(, ang(0)) title(USA Males)

graph export "C:\Users\bz22\Desktop\ComparativeMortality\output\ExternalCauseGraphsNoUK\USAMales.pdf", as(pdf) name("Graph") replace

*OverTime Females

graph twoway (bar p year) (bar o year) (bar n year) (bar m year) (bar l year) (bar k year) (bar j year) (bar i year) (bar h year) (bar g year) (bar f year) (bar e year) (bar d year) (bar c year) (bar b year) (bar a year) if countrystr == "Australia" & sex == 2 , legend(label(1 80-84/5-9) label(2 75-79) label(3 70-74) label (4 65-69) label(5 60-64) label(6 55-59) label(7 50-54) label(8 45-49) label(9 40-44) label(10 35-39) label(11 30-34) label(12 25-29) label(13 20-24) label(14 15-19) label(15 10-14)) ylab(, ang(0)) title(Australia Females)

graph export "C:\Users\bz22\Desktop\ComparativeMortality\output\ExternalCauseGraphsNoUK\AustraliaFemales.pdf", as(pdf) name("Graph") replace

graph twoway (bar p year) (bar o year) (bar n year) (bar m year) (bar l year) (bar k year) (bar j year) (bar i year) (bar h year) (bar g year) (bar f year) (bar e year) (bar d year) (bar c year) (bar b year) (bar a year) if countrystr == "Canada" & sex == 2 , legend(label(1 80-84/5-9) label(2 75-79) label(3 70-74) label (4 65-69) label(5 60-64) label(6 55-59) label(7 50-54) label(8 45-49) label(9 40-44) label(10 35-39) label(11 30-34) label(12 25-29) label(13 20-24) label(14 15-19) label(15 10-14)) ylab(, ang(0)) title(Canada Females)

graph export "C:\Users\bz22\Desktop\ComparativeMortality\output\ExternalCauseGraphsNoUK\CanadaFemales.pdf", as(pdf) name("Graph") replace

graph twoway (bar p year) (bar o year) (bar n year) (bar m year) (bar l year) (bar k year) (bar j year) (bar i year) (bar h year) (bar g year) (bar f year) (bar e year) (bar d year) (bar c year) (bar b year) (bar a year) if countrystr == "USA" & sex == 2 , legend(label(1 80-84/5-9) label(2 75-79) label(3 70-74) label (4 65-69) label(5 60-64) label(6 55-59) label(7 50-54) label(8 45-49) label(9 40-44) label(10 35-39) label(11 30-34) label(12 25-29) label(13 20-24) label(14 15-19) label(15 10-14)) ylab(, ang(0)) title(USAFemales)

graph export "C:\Users\bz22\Desktop\ComparativeMortality\output\ExternalCauseGraphsNoUK\USAFemales.pdf", as(pdf) name("Graph") replace

/*
graph twoway (bar p year) (bar o year) (bar n year) (bar m year) (bar l year) (bar k year) (bar j year) (bar i year) (bar h year) (bar g year) (bar f year) (bar e year) (bar d year) (bar c year) (bar b year) (bar a year) if countrystr == "Australia" & sex == 1 , legend(label(1 80-84/5-9) label(2 75-79) label(3 70-74) label (4 65-69) label(5 60-64) label(6 55-59) label(7 50-54) label(8 45-49) label(9 40-44) label(10 35-39) label(11 30-34) label(12 25-29) label(13 20-24) label(14 15-19) label(15 10-14)) ylab(, ang(0))

graph twoway (bar p year) (bar o year) (bar n year) (bar m year) (bar l year) (bar k year) (bar j year) (bar i year) (bar h year) (bar g year) (bar f year) (bar e year) (bar d year) (bar c year) (bar b year) (bar a year) if countrystr == "Australia" & sex == 1 & YearMult10 ==0 , legend(label(1 80-84/5-9) label(2 75-79) label(3 70-74) label (4 65-69) label(5 60-64) label(6 55-59) label(7 50-54) label(8 45-49) label(9 40-44) label(10 35-39) label(11 30-34) label(12 25-29) label(13 20-24) label(14 15-19) label(15 10-14)) ylab(, ang(0))


graph twoway (bar a year) (bar b year) if countrystr == "Australia"



catplot ExIntCauseMortalityPer100k year if ExternalD == 1 , by(agecat)

gen
*/
