use "C:\Users\bz22\Desktop\ComparativeMortalityData\RandomStatistics\CoDandPopulation\WHODirect\AllAgesAllCauses\ICD7-10AngloWide.dta"


*drop the doubled cancer codes
gen LetterFirstCauseDummy = uisletter(cause) if list == "07A" | list == "08A" | list == "09B"
drop if LetterFirstCauseDummy == 0

*drop the sum of the sub causes for the ICD 09B
gen CauseLength = strlen(cause)
drop if CauseLength == 4 & list == "09B"


* Drop the codes for all causes
drop if cause == "A000" | cause == "B00" | cause == "AAA"

save "C:\Users\bz22\Desktop\ComparativeMortalityData\RandomStatistics\CoDandPopulation\WHODirect\AllAgesAllCauses\ICD7-10AngloWideEliminatedTripleCounting.dta"
