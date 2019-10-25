use "C:\Users\bz22\Desktop\ComparativeMortalityData\RandomStatistics\CoDandPopulation\WHODirect\AllAgesAllCauses\ICD7-10AngloWideEliminatedTripleCounting.dta"
drop lb im_deaths1 im_deaths2 im_deaths3 im_deaths4
reshape long deaths pop,  i(country year sex list cause) j(agecat)

gen mortality = deaths/pop

label define agecat 1 "AllAges" 2 "0" 3 "1" 4 "2" 5 "3" 6 "4" 7 "5-9" 8 "10-14" 9 "15-19" 10 "20-24" 11 "25-29" 12 "30-34" 13 "35-39" 14 "40-44" 15 "45-49" 16 "50-54" 17 "55-59" 18 "60-64" 19 "65-69" 20 "70-74" 21 "75-79" 22 "80-84" 23 "85-89" 24 "90-94" 25 "95+" 26 "Unknown"
label values agecat agecat

label define sex 1 "Male" 2 "Female"
label values sex sex

save "C:\Users\bz22\Desktop\ComparativeMortalityData\RandomStatistics\CoDandPopulation\WHODirect\AllAgesAllCauses\ICD7-10AngloLongEliminatedTripleCounting.dta"


deaths1 deaths2 deaths3 deaths4 deaths5 deaths6 deaths7 deaths8 deaths9 deaths10 deaths11 deaths12 deaths13 deaths14 deaths15 deaths16 deaths17 deaths18 deaths19 deaths20 deaths21 deaths22 deaths23 deaths24 deaths25 deaths26 pop1 pop2 pop3 pop4 pop5 pop6 pop7 pop8 pop9 pop10 pop11 pop12 pop13 pop14 pop15 pop16 pop17 pop18 pop19 pop20 pop21 pop22 pop23 pop24 pop25 pop26
