library(tidyverse)
library(haven)
ExternalCauses <- read_dta("C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CoDandPopulation/WHODirect/AllAgesAllCauses/ExternalCausePer100kByAge5_85/ExternalCauses.dta")
View(ExternalCauses)

agecat1 = c(7(5-9),8,9,10,11,12,13,14,15,16,17,18,19,20,21,22)

agecat1 =c("7(5-9)", "8(10-14)", "9(15-19)")

agecat2 = c("10(20-24)", "11(25-29)", "12(30-34)", "13(35-39)", "14(40-44)", "15(45-49)", "16(50-54)", "17(55-59)", "18(60-64)", "19(65-69)", "20(70-74)", "21(75-79)", "22(80-84)")

## One way of doing this in a loop for future reference

List= unique(ExternalCauses$agecatstr)
for (var in seq_along(List)) {
  Graphs=
    (ggplot(subset(ExternalCauses,agecatstr== List[var] & sex == 1 & year%%10==0), aes(fill = countrystr, y = WeightedECMortalityPer100kByAge, x = year ))+
          geom_bar(position = "dodge", stat = "identity")+
          ggtitle(paste(List[var], "Male")))
  print(Graphs)

  ggsave(Graphs, file=paste(List[var],"Male" , ".pdf", sep=''))

}

## Males


ggplot(subset(ExternalCauses, agecat == 7 & sex == 1 & year%%10==0), aes(fill = countrystr, y = WeightedECMortalityPer100kByAge, x = year ))+
  geom_bar(position = "dodge", stat = "identity")+
  ggtitle("5-9 Male")

ggsave("5-9Male.pdf")


ggplot(subset(ExternalCauses, agecat == 8 & sex == 1 & year%%10==0), aes(fill = countrystr, y = WeightedECMortalityPer100kByAge, x = year ))+
  geom_bar(position = "dodge", stat = "identity")+
  ggtitle("10-14 Male")
ggsave("10-14Male.pdf")

ggplot(subset(ExternalCauses, agecat == 9 & sex == 1 & year%%10==0), aes(fill = countrystr, y = WeightedECMortalityPer100kByAge, x = year ))+
  geom_bar(position = "dodge", stat = "identity")+
  ggtitle("15-19 Male")
ggsave("15-19 Male.pdf")

ggplot(subset(ExternalCauses, agecat == 10 & sex == 1 & year%%10==0), aes(fill = countrystr, y = WeightedECMortalityPer100kByAge, x = year ))+
  geom_bar(position = "dodge", stat = "identity")+
  ggtitle("20-24 Male")

ggsave("20-24 Male.pdf")

ggplot(subset(ExternalCauses, agecat == 11 & sex == 1 & year%%10==0), aes(fill = countrystr, y = WeightedECMortalityPer100kByAge, x = year ))+
  geom_bar(position = "dodge", stat = "identity")+
  ggtitle("25-29 Male")

ggsave("25-29 Male.pdf")

ggplot(subset(ExternalCauses, agecat == 12 & sex == 1 & year%%10==0), aes(fill = countrystr, y = WeightedECMortalityPer100kByAge, x = year ))+
  geom_bar(position = "dodge", stat = "identity")+
  ggtitle("30-34 Male")

ggsave("30-34 Male.pdf")


ggplot(subset(ExternalCauses, agecat == 13 & sex == 1 & year%%10==0), aes(fill = countrystr, y = WeightedECMortalityPer100kByAge, x = year ))+
  geom_bar(position = "dodge", stat = "identity")+
  ggtitle("35-39 Male")

ggsave("35-39 Male.pdf")


ggplot(subset(ExternalCauses, agecat == 14 & sex == 1 & year%%10==0), aes(fill = countrystr, y = WeightedECMortalityPer100kByAge, x = year ))+
  geom_bar(position = "dodge", stat = "identity")+
  ggtitle("40-44 Male")

ggsave("40-44 Male.pdf")


ggplot(subset(ExternalCauses, agecat == 15 & sex == 1 & year%%10==0), aes(fill = countrystr, y = WeightedECMortalityPer100kByAge, x = year ))+
  geom_bar(position = "dodge", stat = "identity")+
  ggtitle("45-49 Male")

ggsave("45-49 Male.pdf")


ggplot(subset(ExternalCauses, agecat == 16 & sex == 1 & year%%10==0), aes(fill = countrystr, y = WeightedECMortalityPer100kByAge, x = year ))+
  geom_bar(position = "dodge", stat = "identity")+
  ggtitle("50-54 Male")

ggsave("50-54 Male.pdf")

ggplot(subset(ExternalCauses, agecat == 17 & sex == 1 & year%%10==0), aes(fill = countrystr, y = WeightedECMortalityPer100kByAge, x = year ))+
  geom_bar(position = "dodge", stat = "identity")+
  ggtitle("55-59 Male")

ggsave("55-59 Male.pdf")


ggplot(subset(ExternalCauses, agecat == 18 & sex == 1 & year%%10==0), aes(fill = countrystr, y = WeightedECMortalityPer100kByAge, x = year ))+
  geom_bar(position = "dodge", stat = "identity")+
  ggtitle("60-64 Male")

ggsave("60-64 Male.pdf")

ggplot(subset(ExternalCauses, agecat == 19 & sex == 1 & year%%10==0), aes(fill = countrystr, y = WeightedECMortalityPer100kByAge, x = year ))+
  geom_bar(position = "dodge", stat = "identity")+
  ggtitle("65-69 Male")

ggsave("65-69 Male.pdf")


ggplot(subset(ExternalCauses, agecat == 20 & sex == 1 & year%%10==0), aes(fill = countrystr, y = WeightedECMortalityPer100kByAge, x = year ))+
  geom_bar(position = "dodge", stat = "identity")+
  ggtitle("70-74 Male")

ggsave("70-74 Male.pdf")


ggplot(subset(ExternalCauses, agecat == 21 & sex == 1 & year%%10==0), aes(fill = countrystr, y = WeightedECMortalityPer100kByAge, x = year ))+
  geom_bar(position = "dodge", stat = "identity")+
  ggtitle("75-79 Male")

ggsave("75-79 Male.pdf")


ggplot(subset(ExternalCauses, agecat == 22 & sex == 1 & year%%10==0), aes(fill = countrystr, y = WeightedECMortalityPer100kByAge, x = year ))+
  geom_bar(position = "dodge", stat = "identity")+
  ggtitle("80-84 Male")

ggsave("80-84 Male.pdf")

##Females

ggplot(subset(ExternalCauses, agecat == 7 & sex == 2 & year%%10==0), aes(fill = countrystr, y = WeightedECMortalityPer100kByAge, x = year ))+
  geom_bar(position = "dodge", stat = "identity")+
  ggtitle("5-9 Female")

ggsave("5-9Female.pdf")


ggplot(subset(ExternalCauses, agecat == 8 & sex == 2 & year%%10==0), aes(fill = countrystr, y = WeightedECMortalityPer100kByAge, x = year ))+
  geom_bar(position = "dodge", stat = "identity")+
  ggtitle("10-14 Female")
ggsave("10-14Female.pdf")

ggplot(subset(ExternalCauses, agecat == 9 & sex == 2 & year%%10==0), aes(fill = countrystr, y = WeightedECMortalityPer100kByAge, x = year ))+
  geom_bar(position = "dodge", stat = "identity")+
  ggtitle("15-19 Female")
ggsave("15-19 Female.pdf")

ggplot(subset(ExternalCauses, agecat == 10 & sex == 2 & year%%10==0), aes(fill = countrystr, y = WeightedECMortalityPer100kByAge, x = year ))+
  geom_bar(position = "dodge", stat = "identity")+
  ggtitle("20-24 Female")

ggsave("20-24 Female.pdf")

ggplot(subset(ExternalCauses, agecat == 11 & sex == 2 & year%%10==0), aes(fill = countrystr, y = WeightedECMortalityPer100kByAge, x = year ))+
  geom_bar(position = "dodge", stat = "identity")+
  ggtitle("25-29 Female")

ggsave("25-29 Female.pdf")

ggplot(subset(ExternalCauses, agecat == 12 & sex == 2 & year%%10==0), aes(fill = countrystr, y = WeightedECMortalityPer100kByAge, x = year ))+
  geom_bar(position = "dodge", stat = "identity")+
  ggtitle("30-34 Female")

ggsave("30-34 Female.pdf")


ggplot(subset(ExternalCauses, agecat == 13 & sex == 2 & year%%10==0), aes(fill = countrystr, y = WeightedECMortalityPer100kByAge, x = year ))+
  geom_bar(position = "dodge", stat = "identity")+
  ggtitle("35-39 Female")

ggsave("35-39 Female.pdf")


ggplot(subset(ExternalCauses, agecat == 14 & sex == 2 & year%%10==0), aes(fill = countrystr, y = WeightedECMortalityPer100kByAge, x = year ))+
  geom_bar(position = "dodge", stat = "identity")+
  ggtitle("40-44 Female")

ggsave("40-44 Female.pdf")


ggplot(subset(ExternalCauses, agecat == 15 & sex == 2 & year%%10==0), aes(fill = countrystr, y = WeightedECMortalityPer100kByAge, x = year ))+
  geom_bar(position = "dodge", stat = "identity")+
  ggtitle("45-49 Female")

ggsave("45-49 Female.pdf")


ggplot(subset(ExternalCauses, agecat == 16 & sex == 2 & year%%10==0), aes(fill = countrystr, y = WeightedECMortalityPer100kByAge, x = year ))+
  geom_bar(position = "dodge", stat = "identity")+
  ggtitle("50-54 Female")

ggsave("50-54 Female.pdf")

ggplot(subset(ExternalCauses, agecat == 17 & sex == 2 & year%%10==0), aes(fill = countrystr, y = WeightedECMortalityPer100kByAge, x = year ))+
  geom_bar(position = "dodge", stat = "identity")+
  ggtitle("55-59 Female")

ggsave("55-59 Female.pdf")


ggplot(subset(ExternalCauses, agecat == 18 & sex == 2 & year%%10==0), aes(fill = countrystr, y = WeightedECMortalityPer100kByAge, x = year ))+
  geom_bar(position = "dodge", stat = "identity")+
  ggtitle("60-64 Female")

ggsave("60-64 Female.pdf")

ggplot(subset(ExternalCauses, agecat == 19 & sex == 2 & year%%10==0), aes(fill = countrystr, y = WeightedECMortalityPer100kByAge, x = year ))+
  geom_bar(position = "dodge", stat = "identity")+
  ggtitle("65-69 Female")

ggsave("65-69 Female.pdf")


ggplot(subset(ExternalCauses, agecat == 20 & sex == 2 & year%%10==0), aes(fill = countrystr, y = WeightedECMortalityPer100kByAge, x = year ))+
  geom_bar(position = "dodge", stat = "identity")+
  ggtitle("70-74 Female")

ggsave("70-74 Female.pdf")


ggplot(subset(ExternalCauses, agecat == 21 & sex == 2 & year%%10==0), aes(fill = countrystr, y = WeightedECMortalityPer100kByAge, x = year ))+
  geom_bar(position = "dodge", stat = "identity")+
  ggtitle("75-79 Female")

ggsave("75-79 Female.pdf")


ggplot(subset(ExternalCauses, agecat == 22 & sex == 2 & year%%10==0), aes(fill = countrystr, y = WeightedECMortalityPer100kByAge, x = year ))+
  geom_bar(position = "dodge", stat = "identity")+
  ggtitle("80-84 Female")

ggsave("80-84 Female.pdf")
