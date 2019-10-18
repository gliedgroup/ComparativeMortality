use "C:\Users\bz22\Desktop\ComparativeMortalityData\MortalityFromExternalCauses\AnglophoneExternalCausesSummed.dta"

gen year2 = year+10
gen agecat4 = agecat3 + 2

drop year
drop agecat3

rename year2 year
rename agecat4 agecat3

global var "mortality population populationinthousands ExternalCausesMortality ExternalCausesMortalityRate logExternalCausesMortalityRate"
foreach v in $var{
  rename `v' `v'_10
}
rename logExternalCausesMortalityRate logExternalCausesMortalityRate10

clear
use "C:\Users\bz22\Desktop\ComparativeMortalityData\MortalityFromExternalCauses\AnglophoneExternalCausesSummed.dta"
merge 1:1 year agecat3 country sex using "C:\Users\bz22\Desktop\ComparativeMortalityData\MortalityFromExternalCauses\AnglophoneExternalCausesSummedPrepLag.dta", gen(lagMerge)
drop if mortality == .
save "C:\Users\bz22\Desktop\ComparativeMortalityData\MortalityFromExternalCauses\AnglophoneExternalCausesSummedLagVars.dta"
