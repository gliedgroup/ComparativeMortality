global years "1950-1961 1962-1983 1984-2000 2001-2015"

foreach y in $years{
  import delimited "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CauseOfDeath/US/US`y'.csv", varnames(1) case(preserve) clear
  save "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CauseOfDeath/US/US`y'.dta"
}

clear

global years2 "1962-1983 1984-2000 2001-2015"

use "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CauseOfDeath/US/US1950-1961.dta"
foreach y in $years2{
  append using "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CauseOfDeath/US/US`y'.dta", force
}
save "C:\Users\bz22\Desktop\ComparativeMortalityData\RandomStatistics\CauseOfDeath\US\US1950-2015.dta"
