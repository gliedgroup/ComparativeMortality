library(tidyverse)
library(haven)

Australia1950_2015 <- read_dta("C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CauseOfDeath/Australia/Australia1950-2015.dta")
Australia = gather(Australia1950_2015,  key = Agecat, Mortality, Allages ,Zero ,One ,Two ,Three ,Four ,FiveToNine ,TenToFourteen ,FifteenToNineteen ,TwentyToTwentyfour ,TwentyfiveToTwentynine ,ThirtyToThirtyfour ,ThirtyfiveToThirtynine ,FortyToFortyfour ,FortyrfiveToFortynin ,FiftyToFiftyfour ,FiftyfiveToFiftynine ,SixtyToSixtyfour ,SixtyfivetoSixtynin ,SeventyToSeventyfour ,SeventyfiveToSeventyNine ,EightyToEightyfour ,EightyfiveToEightynine ,NinetyToNinetyfour ,MoreThanNinetyFive ,Unknown)
write.csv(Australia, "Australia1950-2015Long2.csv")



Canada1950_2013 <- read_dta("C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CauseOfDeath/Canada/Canada1950-2013.dta")
Canada = gather(Canada1950_2013,  key = Agecat, Mortality, Allages ,Zero ,One ,Two ,Three ,Four ,FiveToNine ,TenToFourteen ,FifteenToNineteen ,TwentyToTwentyfour ,TwentyfiveToTwentynine ,ThirtyToThirtyfour ,ThirtyfiveToThirtynine ,FortyToFortyfour ,FortyrfiveToFortynin ,FiftyToFiftyfour ,FiftyfiveToFiftynine ,SixtyToSixtyfour ,SixtyfivetoSixtynin ,SeventyToSeventyfour ,SeventyfiveToSeventyNine ,EightyToEightyfour ,EightyfiveToEightynine ,NinetyToNinetyfour ,MoreThanNinetyFive ,Unknown)
write.csv(Canada, "Canada1950-2013.csv")


UK1950_2015 <- read_dta("C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CauseOfDeath/UK/UK1950-2015.dta")
UK = gather(UK1950_2015,  key = Agecat, Mortality, Allages ,Zero ,One ,Two ,Three ,Four ,FiveToNine ,TenToFourteen ,FifteenToNineteen ,TwentyToTwentyfour ,TwentyfiveToTwentynine ,ThirtyToThirtyfour ,ThirtyfiveToThirtynine ,FortyToFortyfour ,FortyrfiveToFortynin ,FiftyToFiftyfour ,FiftyfiveToFiftynine ,SixtyToSixtyfour ,SixtyfivetoSixtynin ,SeventyToSeventyfour ,SeventyfiveToSeventyNine ,EightyToEightyfour ,EightyfiveToEightynine ,NinetyToNinetyfour ,MoreThanNinetyFive ,Unknown)
write.csv(UK, "UK1950-2015.csv")

US1950_2015 <- read_dta("C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CauseOfDeath/US/US1950-2015.dta")
US = gather(US1950_2015,  key = Agecat, Mortality, Allages ,Zero ,One ,Two ,Three ,Four ,FiveToNine ,TenToFourteen ,FifteenToNineteen ,TwentyToTwentyfour ,TwentyfiveToTwentynine ,ThirtyToThirtyfour ,ThirtyfiveToThirtynine ,FortyToFortyfour ,FortyrfiveToFortynin ,FiftyToFiftyfour ,FiftyfiveToFiftynine ,SixtyToSixtyfour ,SixtyfivetoSixtynin ,SeventyToSeventyfour ,SeventyfiveToSeventyNine ,EightyToEightyfour ,EightyfiveToEightynine ,NinetyToNinetyfour ,MoreThanNinetyFive ,Unknown)
write.csv(US, "US1950-2015.csv")
