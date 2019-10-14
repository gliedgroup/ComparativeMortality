library(tidyverse)
library(haven)
Australia1950_2015 <- read_dta("C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CauseOfDeath/Australia1950-2015.dta")
View(Australia1950_2015)

x = gather(Australia1950_2015,  key = Agecat, Allages ,Zero ,One ,Two ,Three ,Four ,FiveToNine ,TenToFourteen ,FifteenToNineteen ,TwentyToTwentyfour ,TwentyfiveToTwentynine ,ThirtyToThirtyfour ,ThirtyfiveToThirtynine ,FortyToFortyfour ,FortyrfiveToFortynin ,FiftyToFiftyfour ,FiftyfiveToFiftynine ,SixtyToSixtyfour ,SixtyfivetoSixtynin ,SeventyToSeventyfour ,SeventyfiveToSeventyNine ,EightyToEightyfour ,EightyfiveToEightynine ,NinetyToNinetyfour ,MoreThanNinetyFive ,Unknown)
View(x)

x2= rename(x, "Mortality" = Allages)

write.csv(x2, "Australia1950-2015Long.csv")
rm(x)
