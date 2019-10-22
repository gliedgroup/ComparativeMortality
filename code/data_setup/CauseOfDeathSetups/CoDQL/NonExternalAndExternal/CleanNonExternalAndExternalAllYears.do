use "C:\Users\bz22\Desktop\ComparativeMortalityData\MortalityFromExternalAndNonExternalCauses\AnglophoneAllYearsSummed.dta"

gen NECMortalityRate = NECMortality/population
gen ECMortalityRate = ECMortality/population

gen NEC_EC = NECMortalityRate/ECMortalityRate
label var NEC_EC "NonExternalMortalityRate/ExternalMortalityRate"

gen TotalMortality = NECMortality + ECMortality
label var TotalMortality "NECMortality + ECMortality"

gen PctNECMortality = NECMortality/TotalMortality
gen PctExternalMortality = ECMortality/TotalMortality

label define sex 1 "Male" 2 "Female"
label values sex sex

gen logECMortalityRate=log(ECMortalityRate)
gen logNECMortalityRate=log(NECMortalityRate)

gen TotalMortalityRate = TotalMortality/population
gen logTotalMortalityRate = log(TotalMortalityRate)
