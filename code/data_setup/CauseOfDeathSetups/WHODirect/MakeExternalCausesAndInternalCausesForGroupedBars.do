use "C:\Users\bz22\Desktop\ComparativeMortalityData\RandomStatistics\CoDandPopulation\WHODirect\AllAgesAllCauses\ICD7-10NoUKWideEliminatedTripleCountingAddUSCanadaMalesAndFemalesPost2006DroppedAllAgesAndUnknown.dta"

/*
egen AllExternalCauseDeaths = sum(DeathsByExternalInternalCauses) if ExternalD == 1, by(year country sex)

egen AllInternalCauseDeaths = sum(DeathsByExternalInternalCauses) if ExternalD == 0, by(year country sex)

*/

gen ExternalCauseDeaths = DeathsByExternalInternalCauses if ExternalD == 1

gen InternalCauseDeaths = DeathsByExternalInternalCauses if ExternalD == 0

preserve
collapse (mean) pop ExternalCauseDeaths InternalCauseDeaths, by(year countrystr sex agecat)

drop if agecat <7 | agecat > 22

gen agecat2str = "5-14" if agecat == 7 | agecat == 8
replace agecat2str = "15-24" if agecat == 9 | agecat == 10
replace agecat2str = "25-34" if agecat == 11 | agecat == 12
replace agecat2str = "35-44" if agecat == 13 | agecat == 14
replace agecat2str = "45-54" if agecat == 15 | agecat == 16
replace agecat2str = "55-64" if agecat == 17 | agecat == 18
replace agecat2str = "65-74" if agecat == 19 | agecat == 20
replace agecat2str = "75-84" if agecat == 21 | agecat == 22


egen TotalPop5_85 = sum(pop), by(year country sex)


egen ECDeathsByAgeCat2 = sum(ExternalCauseDeaths), by(year country sex agecat2str)

egen ICDeathsByAgeCat2 = sum(InternalCauseDeaths), by(year country sex agecat2str)

egen popByAgeCat2 = sum(pop), by(year country sex agecat2str)

gen PropByAgeCat2Pop5_85 = popByAgeCat2/TotalPop5_85


gen ECMortalityPer100kByAgeCat2 = ECDeathsByAgeCat2*100000/popByAgeCat2

gen ICMortalityPer100kByAgeCat2 = ICDeathsByAgeCat2*100000/popByAgeCat2

gen WeightedECMortalityPer100kByAge = ECMortalityPer100kByAgeCat2 * PropByAgeCat2Pop5_85

gen WeightedICMortalityPer100kByAge = ICMortalityPer100kByAgeCat2*PropByAgeCat2Pop5_85
