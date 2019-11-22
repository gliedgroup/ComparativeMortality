use "C:\Users\bz22\Desktop\ComparativeMortalityData\RandomStatistics\CoDandPopulation\WHODirect\AllAgesAllCauses\ICD7-10AngloWideEliminatedTripleCountingAddUSCanadaMalesAndFemalesPost2006.dta"

preserve

collapse (mean) DeathsByExternalInternalCauses pop if ExternalD == 1 , by(countrystr year sex agecat)

save "C:\Users\bz22\Desktop\ComparativeMortalityData\RandomStatistics\CoDandPopulation\WHODirect\AllAgesAllCauses\ExternalCauseMortalityPer100kByAge.dta"

restore

preserve

collapse (mean) DeathsByExternalInternalCauses pop if ExternalD == 0 , by(countrystr year sex agecat)

save "C:\Users\bz22\Desktop\ComparativeMortalityData\RandomStatistics\CoDandPopulation\WHODirect\AllAgesAllCauses\InternalCauseMortalityPer100kByAge.dta"

restore
