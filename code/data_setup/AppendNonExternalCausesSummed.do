global names "Canada1950-2013 UK1950-2015 USA1950-2015"
use "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CoDandPopulation/Australia1950-2015NonExternalCausesSummed.dta"


foreach x in $names{
  append using "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CoDandPopulation/`x'NonExternalCausesSummed.dta"
}
