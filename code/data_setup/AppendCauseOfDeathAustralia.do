global years "1950-1961 1962-1972 1973-1984 1985-1994 1995-2004 2006-2015"

foreach y in $years{
  import delimited "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CauseOfDeath/Australia`y'.csv", varnames(1) case(preserve) clear
  save "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CauseOfDeath/Australia`y'.dta"
}

clear

global years2 "1962-1972 1973-1984 1985-1994 1995-2004 2006-2015"

use "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CauseOfDeath/Australia1950-1961.dta"
foreach y in $years2{
  append using "C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CauseOfDeath/Australia`y'.dta", force
}
save "C:\Users\bz22\Desktop\ComparativeMortalityData\RandomStatistics\CauseOfDeath\Australia1950-2015.dta"


Allages ,Zero ,One ,Two ,Three ,Four ,FiveToNine ,TenToFourteen ,FifteenToNineteen ,TwentyToTwentyfour ,TwentyfiveToTwentynine ,ThirtyToThirtyfour ,ThirtyfiveToThirtynine ,FortyToFortyfour ,FortyrfiveToFortynin ,FiftyToFiftyfour ,FiftyfiveToFiftynine ,SixtyToSixtyfour ,SixtyfivetoSixtynin ,SeventyToSeventyfour ,SeventyfiveToSeventyNine ,EightyToEightyfour ,EightyfiveToEightynine ,NinetyToNinetyfour ,MoreThanNinetyFive ,Unknown
