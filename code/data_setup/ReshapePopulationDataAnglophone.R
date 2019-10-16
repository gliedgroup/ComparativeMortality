library(tidyverse)
library(haven)

MalesAnglo = read_dta("C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/PopulationByAge/MalesByAgeAnglophone.dta")
FemalesAnglo = read_dta("C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/PopulationByAge/FemalesByAgeAnglophone.dta")


AustralianFemale = subset(FemalesAnglo, Region == "Australia")
AustralianMale = subset(MalesAnglo, Region == "Australia")

CanadianFemale = subset(FemalesAnglo, Region == "Canada")
CanadianMale = subset(MalesAnglo, Region == "Canada")

UKFemale = subset(FemalesAnglo, Region == "United Kingdom")
UKMale = subset(MalesAnglo, Region == "United Kingdom")

USAFemale= subset(FemalesAnglo, Region == "United States of America")
USAMale= subset(MalesAnglo, Region == "United States of America")

AustralianFemaleLong = gather(AustralianFemale, key = "Agecat", value = "Population", ZeroToFour, FiveToNine, TenToFourteen, FifteenToNineteen, TwentyToTwentyfour, TwentyfiveToTwentynine, ThirtyToThirtyfour, ThirtyfiveToThirtynine, FortyToFortyfour,FortyfiveToFortynine, FiftyToFiftyfour, FiftyfiveToFiftynine, SixtyToSixtyfour, SixtyfiveToSixtynine, SeventyToSeventyfour, SeventyfiveToSeventynine, EightyToEightyfour, EightyfiveToEightynine, NinetyToNinetyfour, NinetyfiveToNinetynine, MoreThanOneHundred)
AustralianMaleLong = gather(AustralianMale, key = "Agecat", value = "Population", ZeroToFour, FiveToNine, TenToFourteen, FifteenToNineteen, TwentyToTwentyfour, TwentyfiveToTwentynine, ThirtyToThirtyfour, ThirtyfiveToThirtynine, FortyToFortyfour,FortyfiveToFortynine, FiftyToFiftyfour, FiftyfiveToFiftynine, SixtyToSixtyfour, SixtyfiveToSixtynine, SeventyToSeventyfour, SeventyfiveToSeventynine, EightyToEightyfour, EightyfiveToEightynine, NinetyToNinetyfour, NinetyfiveToNinetynine, MoreThanOneHundred)

CanadianFemaleLong = gather(CanadianFemale, key = "Agecat", value = "Population", ZeroToFour, FiveToNine, TenToFourteen, FifteenToNineteen, TwentyToTwentyfour, TwentyfiveToTwentynine, ThirtyToThirtyfour, ThirtyfiveToThirtynine, FortyToFortyfour,FortyfiveToFortynine, FiftyToFiftyfour, FiftyfiveToFiftynine, SixtyToSixtyfour, SixtyfiveToSixtynine, SeventyToSeventyfour, SeventyfiveToSeventynine, EightyToEightyfour, EightyfiveToEightynine, NinetyToNinetyfour, NinetyfiveToNinetynine, MoreThanOneHundred)
CanadianMaleLong = gather(CanadianMale, key = "Agecat", value = "Population", ZeroToFour, FiveToNine, TenToFourteen, FifteenToNineteen, TwentyToTwentyfour, TwentyfiveToTwentynine, ThirtyToThirtyfour, ThirtyfiveToThirtynine, FortyToFortyfour,FortyfiveToFortynine, FiftyToFiftyfour, FiftyfiveToFiftynine, SixtyToSixtyfour, SixtyfiveToSixtynine, SeventyToSeventyfour, SeventyfiveToSeventynine, EightyToEightyfour, EightyfiveToEightynine, NinetyToNinetyfour, NinetyfiveToNinetynine, MoreThanOneHundred)

UKFemaleLong = gather(UKFemale, key = "Agecat", value = "Population", ZeroToFour, FiveToNine, TenToFourteen, FifteenToNineteen, TwentyToTwentyfour, TwentyfiveToTwentynine, ThirtyToThirtyfour, ThirtyfiveToThirtynine, FortyToFortyfour,FortyfiveToFortynine, FiftyToFiftyfour, FiftyfiveToFiftynine, SixtyToSixtyfour, SixtyfiveToSixtynine, SeventyToSeventyfour, SeventyfiveToSeventynine, EightyToEightyfour, EightyfiveToEightynine, NinetyToNinetyfour, NinetyfiveToNinetynine, MoreThanOneHundred)
UKMaleLong = gather(UKMale, key = "Agecat", value = "Population", ZeroToFour, FiveToNine, TenToFourteen, FifteenToNineteen, TwentyToTwentyfour, TwentyfiveToTwentynine, ThirtyToThirtyfour, ThirtyfiveToThirtynine, FortyToFortyfour,FortyfiveToFortynine, FiftyToFiftyfour, FiftyfiveToFiftynine, SixtyToSixtyfour, SixtyfiveToSixtynine, SeventyToSeventyfour, SeventyfiveToSeventynine, EightyToEightyfour, EightyfiveToEightynine, NinetyToNinetyfour, NinetyfiveToNinetynine, MoreThanOneHundred)


USAFemaleLong = gather(USAFemale, key = "Agecat", value = "Population", ZeroToFour, FiveToNine, TenToFourteen, FifteenToNineteen, TwentyToTwentyfour, TwentyfiveToTwentynine, ThirtyToThirtyfour, ThirtyfiveToThirtynine, FortyToFortyfour,FortyfiveToFortynine, FiftyToFiftyfour, FiftyfiveToFiftynine, SixtyToSixtyfour, SixtyfiveToSixtynine, SeventyToSeventyfour, SeventyfiveToSeventynine, EightyToEightyfour, EightyfiveToEightynine, NinetyToNinetyfour, NinetyfiveToNinetynine, MoreThanOneHundred)
USAMaleLong = gather(USAMale, key = "Agecat", value = "Population", ZeroToFour, FiveToNine, TenToFourteen, FifteenToNineteen, TwentyToTwentyfour, TwentyfiveToTwentynine, ThirtyToThirtyfour, ThirtyfiveToThirtynine, FortyToFortyfour,FortyfiveToFortynine, FiftyToFiftyfour, FiftyfiveToFiftynine, SixtyToSixtyfour, SixtyfiveToSixtynine, SeventyToSeventyfour, SeventyfiveToSeventynine, EightyToEightyfour, EightyfiveToEightynine, NinetyToNinetyfour, NinetyfiveToNinetynine, MoreThanOneHundred)

x = c("AustralianFemaleLong", "AustralianMaleLong" , "CanadianFemaleLong" , "CanadianMaleLong" , "UKFemaleLong", "UKMaleLong" , "USAFemaleLong", "USAMaleLong")

y = c("AustralianFemaleLong", "AustralianMaleLong")

write.csv(AustralianFemaleLong, "AustralianFemaleLong.csv")
write.csv(AustralianMaleLong, "AustralianMaleLong.csv")


write.csv(CanadianFemaleLong, "CanadianFemaleLong.csv")
write.csv(CanadianMaleLong, "CanadianMaleLong.csv")


write.csv(UKFemaleLong, "UKFemaleLong.csv")
write.csv(UKMaleLong, "UKMaleLong.csv")


write.csv(USAFemaleLong, "USAFemaleLong.csv")
write.csv(USAMaleLong, "USAMaleLong.csv")


