use "C:\Users\bz22\Desktop\ComparativeMortalityData\RandomStatistics\CoDandPopulation\WHODirect\AllAgesAllCauses\ICD7-10AngloWideEliminatedTripleCountingAddUSCanadaMalesAndFemalesPost2006DroppedAllAgesAndUnknown.dta"

drop if countrystr == "UK"

save "C:\Users\bz22\Desktop\ComparativeMortalityData\RandomStatistics\CoDandPopulation\WHODirect\AllAgesAllCauses\ICD7-10NoUKWideEliminatedTripleCountingAddUSCanadaMalesAndFemalesPost2006DroppedAllAgesAndUnknown.dta"