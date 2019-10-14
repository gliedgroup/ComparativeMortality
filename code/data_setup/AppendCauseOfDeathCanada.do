global years "1950-1967 1968-1979 1980-1992 1993-2003 2004-2013"

foreach y in $years{
  import delimited "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CauseOfDeath/Canada/Canada`y'.csv", varnames(1) case(preserve) clear
  save "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CauseOfDeath/Canada/Canada`y'.dta"
}

clear

global years2 "1968-1979 1980-1992 1993-2003 2004-2013"

use "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CauseOfDeath/Canada/Canada1950-1967.dta"
foreach y in $years2{
  append using "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CauseOfDeath/Canada/Canada`y'.dta", force
}
save "C:\Users\bz22\Desktop\ComparativeMortalityData\RandomStatistics\CauseOfDeath\Canada\Canada1950-2015.dta"
