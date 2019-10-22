use "C:\Users\bz22\Desktop\ComparativeMortalityData\MortalityFromExternalAndNonExternalCauses\AnglophoneExternalAndNonExternalCausesSummed.dta"

gen NEC_EC = NECMortalityRate/ExternalCausesMortalityRate
label var NEC_EC "NonExternalMortalityRate/ExternalMortalityRate"

gen TotalMortality = NECMortality + ExternalCausesMortality
label var TotalMortality "NECMortality + ExternalCausesMortality"

gen PctNECMortality = NECMortality/TotalMortality
gen PctExternalMortality = ExternalCausesMortality/TotalMortality

label define sex 1 "Male" 2 "Female"
label values sex sex

gen TotalMortalityRate = TotalMortality/population
gen logTotalMortalityRate = log(TotalMortalityRate)
