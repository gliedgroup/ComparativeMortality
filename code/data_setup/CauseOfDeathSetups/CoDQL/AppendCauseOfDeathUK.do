global years "1950-1961 1962-1975 1976-1990 1991-2004 2005-2015"

foreach y in $years{
  import delimited "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CauseOfDeath/UK/UK`y'.csv", varnames(1) case(preserve) clear
  save "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CauseOfDeath/UK/UK`y'.dta"
}

clear

global years2 "1962-1975 1976-1990 1991-2004 2005-2015"

use "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CauseOfDeath/UK/UK1950-1961.dta"
foreach y in $years2{
  append using "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CauseOfDeath/UK/UK`y'.dta", force
}
save "C:\Users\bz22\Desktop\ComparativeMortalityData\RandomStatistics\CauseOfDeath\UK\UK1950-2015.dta"
