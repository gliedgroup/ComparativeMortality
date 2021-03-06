global names "Australia1950-2015 Canada1950-2013 UK1950-2015 USA1950-2015"
foreach x in $names{
  use "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CoDandPopulation/`x'.dta"
  keep if ExternalD == 0
  destring mortality, replace
  save "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CoDandPopulation/`x'NonExternalCauses.dta", replace
}

foreach x in $names{
  use "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CoDandPopulation/`x'NonExternalCauses.dta"
  drop code format agecat index variant region notes countrycode type parentcode
  keep if _merge == 3
  egen ExternalCausesMortality = sum(mortality), by(year sex agecat3)
  gen ExternalCausesMortalityRate = ExternalCausesMortality/population
  duplicates drop agecat3 sex year , force
  save "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CoDandPopulation/`x'NonExternalCausesSummed.dta", replace
}
