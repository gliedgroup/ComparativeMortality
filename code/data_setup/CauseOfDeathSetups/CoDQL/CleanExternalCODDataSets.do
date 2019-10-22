global names "Australia1950-2015 Canada1950-2013 UK1950-2015 USA1950-2015"
foreach x in $names{
  use "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CoDandPopulation/`x'ExternalCauses.dta"
  drop code format agecat index variant region notes countrycode type parentcode
  keep if _merge == 3
  gen MortalityRate = mortality/population
  save "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CoDandPopulation/`x'ExternalCausesClean.dta", replace
}
