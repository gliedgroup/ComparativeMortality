library(haven)
AusCanUS <- read_dta("C:/Users/bz22/Desktop/ComparativeMortalityData/Pre1960 Countries/DeathsAndPop/AusCanUSNo110+AgeCat2StrReadyForBars.dta")
View(AusCanUS)
library(tidyverse)
dplyr::glimpse(AusCanUS)

List = unique(AusCanUS$agecat2str)

for (var in seq_along(List)){
  MaleTotalCause =
    (ggplot(subset(AusCanUS, agecat2str == List[var] & year %%10 == 0 & year >=1950), aes(fill = country, y =WeightedMortalityPer100kMales, x = year))+
       geom_bar(position = "dodge", stat = "identity")+
       ggtitle(paste(List[var], "Male Total Cause Human Mortality Database")))
  print(MaleTotalCause)
  ggsave(MaleTotalCause, file= paste(List[var], "MaleTotalCause", ".pdf", sep = ''))
}


for (var in seq_along(List)){
  FemaleTotalCause =
    (ggplot(subset(AusCanUS, agecat2str == List[var] & year %%10 == 0 & year >=1950), aes(fill = country, y =WeightedMortalityPer100kFemales, x = year))+
       geom_bar(position = "dodge", stat = "identity")+
       ggtitle(paste(List[var], "Female Total Cause Human Mortality Database")))
  print(FemaleTotalCause)
  ggsave(FemaleTotalCause, file= paste(List[var], "FemaleTotalCause", ".pdf", sep = ''))
}