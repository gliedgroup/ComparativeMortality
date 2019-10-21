import delimited "C:\Users\bz22\Desktop\ComparativeMortalityData\RoadDeaths1970-2017.csv", encoding(UTF-8)
*Keep australia canada denmark france germany israel italy japan netherlands norway spain sweden UK USA
keep if location == "AUS" | location == "CAN" | location == "DNK" | location == "FRA" | location == "DEU" | location == "ISR" | location == "ITA" | location == "JPN" | location == "NOR" |location == "ESP" |location == "SWE" | location == "GBR" | location == "USA" | location == "NLD"
save "C:\Users\bz22\Desktop\ComparativeMortalityData\RoadDeaths1970-2017.dta"
