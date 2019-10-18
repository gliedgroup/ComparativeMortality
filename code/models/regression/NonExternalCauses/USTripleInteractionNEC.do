use "C:\Users\bz22\Desktop\ComparativeMortalityData\MortalityFromNonExternalCauses\AnglophoneNonExternalCausesSummedLagVar.dta"


rename country countrystr
encode countrystr, gen(country)
gen USDummy = 0
replace USDummy = 1 if country == 4
gen logNECMortalityRate_10Sq = logNECMortalityRate_10*2


eststo Lag: reg logNECMortalityRate logNECMortalityRate_10 logNECMortalityRate_10Sq i.country USDummy##i.agecat3##i.year
eststo NoLag: reg logNECMortalityRate i.country USDummy##i.agecat3##i.year

esttab using logNECTripleInteractionUSDummy.csv, label mtitles nostar plain not
