use "C:\Users\bz22\Desktop\ComparativeMortalityData\MortalityFromExternalCauses\AnglophoneExternalCausesSummedLagVars.dta"

gen USDummy = 0
replace USDummy = 1 if country == 4

rename logExternalCausesMortalityRate10 logECMortalityRate_10
gen logECMortalityRate_10Sq = logECMortalityRate_10*2

eststo: reg logExternalCausesMortalityRate logECMortalityRate_10 logECMortalityRate_10Sq i.country USDummy##i.agecat3##i.year
esttab using logExternalCausesTripleInteractionUSDummy.csv, label mtitles nostar plain not
