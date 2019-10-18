global names "Australia1950-2015 Canada1950-2013 UK1950-2015 USA1950-2015"
foreach x in $names{
  use "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CoDandPopulation/`x'.dta"
  keep if ExternalD == 1
  save "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CoDandPopulation/`x'ExternalCauses.dta"
}
