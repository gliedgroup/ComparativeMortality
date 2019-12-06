use "C:\Users\bz22\Desktop\ComparativeMortalityData\RandomStatistics\CoDandPopulation\WHODirect\AllAgesAllCauses\ExternalCausePer100kByAge5_85\ExternalAndInternalCauses.dta"

encode countrystr, gen(country)

gen ECMortality = ExternalCauseDeaths/pop
gen ICMortality = InternalCauseDeaths/pop

gen logECMortality = log(ECMortality)
gen logICMortality = log(ICMortality)
