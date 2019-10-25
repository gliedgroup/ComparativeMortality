 use "C:\Users\bz22\Desktop\ComparativeMortalityData\RandomStatistics\CauseOfDeath\WHODirect\ICD7-10AngloWide.dta"

 missings dropvars
 drop deaths1 deaths2 deaths3  deaths4 deaths5 deaths6 deaths23 deaths24 deaths25 deaths26 im_deaths1 im_deaths2 im_deaths3 im_deaths4

 reshape long deaths, i(country year sex list cause) j(mortality)
 rename mortality agecat3
 replace agecat3 = agecat3 - 6
save "C:\Users\bz22\Desktop\ComparativeMortalityData\RandomStatistics\CoDandPopulation\WHODirect\AnglophoneAllYears.dta"
