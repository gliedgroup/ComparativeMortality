global names "AustraliaDeaths AustraliaPop CanadaDeaths CanadaPop USDeaths USPop"
foreach x in $names{
import delimited "C:/Users/bz22/Desktop/ComparativeMortalityData/Pre1960 Countries/DeathsAndPop/Csv/`x'.csv", clear
save "C:/Users/bz22/Desktop/ComparativeMortalityData/Pre1960 Countries/DeathsAndPop/`x'.dta" , replace
}

global names "AustraliaPop CanadaDeaths CanadaPop USDeaths USPop"
foreach x in $names{
  use "C:/Users/bz22/Desktop/ComparativeMortalityData/Pre1960 Countries/DeathsAndPop/`x'.dta", clear
  rename ïyear year
  save "C:/Users/bz22/Desktop/ComparativeMortalityData/Pre1960 Countries/DeathsAndPop/`x'.dta" , replace

}

global countries "Australia Canada US"
foreach x in $countries{
  use "C:/Users/bz22/Desktop/ComparativeMortalityData/Pre1960 Countries/DeathsAndPop/`x'Pop.dta", clear
  merge 1:1 year age using "C:/Users/bz22/Desktop/ComparativeMortalityData/Pre1960 Countries/DeathsAndPop/`x'Deaths.dta"
  keep if _merge < 3
  gen country = "`x'"
  save "C:/Users/bz22/Desktop/ComparativeMortalityData/Pre1960 Countries/DeathsAndPop/`x'.dta" ,replace
}

global countries2 "Canada US"
use "C:\Users\bz22\Desktop\ComparativeMortalityData\Pre1960 Countries\DeathsAndPop\Australia.dta"
foreach x in $countries2{
  append using "C:/Users/bz22/Desktop/ComparativeMortalityData/Pre1960 Countries/DeathsAndPop/`x'.dta"
}

rename totalpop bothsexpop
rename totaldeaths bothsexdeaths
 save "C:\Users\bz22\Desktop\ComparativeMortalityData\Pre1960 Countries\DeathsAndPop\AusCanUS.dta"

 drop if strlen(age) > 3
 destring age, replace

 save "C:\Users\bz22\Desktop\ComparativeMortalityData\Pre1960 Countries\DeathsAndPop\AusCanUSNo110+.dta"
