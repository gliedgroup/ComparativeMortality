global countries "Australia1950-2015 Canada1950-2013 UK1950-2015 US1950-2015"
foreach c in $countries{
  use "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CauseOfDeath/`c'.dta", clear
  drop if agecat == "Allages" | agecat == "Zero" | agecat == "Unknown" |agecat == "One" | agecat == "Two" | agecat == "Three" | agecat == "Four" | agecat =="EightyfiveToEightynine" | agecat == "MoreThanNinetyFive" | agecat == "NinetyToNinetyfour"
  drop v1
  save "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CauseOfDeath/`c'Cleaned.dta"

}

foreach c in $countries{
  use "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CauseOfDeath/`c'Cleaned.dta"
  replace agecat = "SixtyfiveToSixtynine" if agecat == "SixtyfivetoSixtynin"

  save "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CauseOfDeath/`c'Cleaned.dta", replace

}

foreach c in $countries{
  use "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CauseOfDeath/`c'Cleaned.dta",clear
  gen agecat2 = "5-9" if agecat == "FiveToNine"
  replace agecat2 = "10-14" if agecat == "TenToFourteen"
  replace agecat2 = "15-19" if agecat == "FifteenToNineteen"
  replace agecat2 = "20-24" if agecat == "TwentyToTwentyfour"
  replace agecat2 = "25-29" if agecat == "TwentyfiveToTwentynine"
  replace agecat2 = "30-34" if agecat == "ThirtyToThirtyfour"
  replace agecat2 = "35-39" if agecat == "ThirtyfiveToThirtynine"
  replace agecat2 = "40-44" if agecat == "FortyToFortyfour"
  replace agecat2 = "45-49" if agecat == "FortyfiveToFortynine"
  replace agecat2 = "50-54" if agecat == "FiftyToFiftyfour"
  replace agecat2 = "55-59" if agecat == "FiftyfiveToFiftynine"
  replace agecat2 = "60-64" if agecat == "SixtyToSixtyfour"
  replace agecat2 = "65-69" if agecat == "SixtyfiveToSixtynine"
  replace agecat2 = "70-74" if agecat == "SeventyToSeventyfour"
  replace agecat2 = "75-79" if agecat == "SeventyfiveToSeventyNine"
  replace agecat2 = "80-84" if agecat == "EightyToEightyfour"
  save "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CauseOfDeath/`c'Cleaned.dta", replace
}

foreach c in $countries{
  use "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CauseOfDeath/`c'Cleaned.dta",clear
  gen agecat3 = 1 if agecat2 == "5-9"
  replace agecat3 = 2 if agecat2 == "10-14"
  replace agecat3 = 3 if agecat2 == "15-19"
  replace agecat3 = 4 if agecat2 == "20-24"
  replace agecat3 = 5 if agecat2 == "25-29"
  replace agecat3 = 6 if agecat2 == "30-34" 
  replace agecat3 = 7 if agecat2 == "35-39"
  replace agecat3 = 8 if agecat2 == "40-44"
  replace agecat3 = 9 if agecat2 == "45-49"
  replace agecat3 = 10 if agecat2 == "50-54"
  replace agecat3 = 11 if agecat2 == "55-59"
  replace agecat3 = 12 if agecat2 == "60-64"
  replace agecat3 = 13 if agecat2 == "65-69"
  replace agecat3 = 14 if agecat2 == "70-74"
  replace agecat3 = 15 if agecat2 == "75-79"
  replace agecat3 = 16 if agecat2 == "80-84"
  label define agecat3 1 "5-9" 2 "10-14" 3 "15-19" 4 "20-24" 5 "25-29" 6 "30-34" 7 "35-39" 8 "40-44" 9 "45-49" 10 "50-54" 11 "55-59" 12 "60-64" 13 "65-69" 14 "70-74" 15 "75-79" 16 "80-84"
  label values agecat3 agecat3
  save "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CauseOfDeath/`c'Cleaned.dta", replace
}
