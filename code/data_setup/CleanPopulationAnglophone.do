global data "AustralianFemaleLong AustralianMaleLong CanadianFemaleLong CanadianMaleLong UKFemaleLong UKMaleLong USAFemaleLong USAMaleLong"
foreach x in $data{
  import delimited "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/PopulationByAge/`x'.csv", encoding(ISO-8859-2) clear
  save "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/PopulationByAge/`x'.dta"
}

global female "AustralianFemaleLong CanadianFemaleLong UKFemaleLong USAFemaleLong"
foreach f in $female{
  use "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/PopulationByAge/`f'.dta"
  gen sex = 2
  save "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/PopulationByAge/`f'.dta", replace
}



global male "AustralianMaleLong CanadianMaleLong UKMaleLong USAMaleLong"
foreach m in $male{
  use "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/PopulationByAge/`m'.dta"
  gen sex = 1
  save "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/PopulationByAge/`m'.dta", replace
}

global country "Australia Canada UK USA"
foreach m in $male{
  foreach f in $female{
    foreach c in $country{
    use "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/PopulationByAge/`m'.dta", clear
    append using "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/PopulationByAge/`f'.dta"
    save "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/PopulationByAge/`c'.dta"
    }
  }
}
