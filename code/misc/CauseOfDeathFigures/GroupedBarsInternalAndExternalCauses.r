library(tidyverse)
library(haven)

ExternalAndInternalCauses <- read_dta("C:/Users/bz22/Desktop/ComparativeMortalityData/RandomStatistics/CoDandPopulation/WHODirect/AllAgesAllCauses/ExternalCausePer100kByAge5_85/ExternalAndInternalCauses.dta")


List = unique(ExternalAndInternalCauses$agecat2str)

for (var in seq_along(List)){
  MaleExternalCause =
    (ggplot(subset(ExternalAndInternalCauses, agecat2str == List[var] & sex == 1 & year%%10 == 0), aes(fill = countrystr, y = WeightedECMortalityPer100kByAge, x = year))+
       geom_bar(position = "dodge", stat = "identity")+
       ggtitle(paste(List[var], "Male External Cause")))
  print(MaleExternalCause)
  ggsave(MaleExternalCause, file = paste(List[var],"MaleExternalCause", ".pdf", sep= ''))
}


for (var in seq_along(List)){
  FemaleExternalCause =
    (ggplot(subset(ExternalAndInternalCauses, agecat2str == List[var] & sex == 2 & year%%10 == 0), aes(fill = countrystr, y = WeightedECMortalityPer100kByAge, x = year))+
       geom_bar(position = "dodge", stat = "identity")+
       ggtitle(paste(List[var], "Female External Cause")))
  print(FemaleExternalCause)
  ggsave(FemaleExternalCause, file = paste(List[var],"FemaleExternalCause", ".pdf", sep= ''))
}


for (var in seq_along(List)){
  MaleInternalCause =
    (ggplot(subset(ExternalAndInternalCauses, agecat2str == List[var] & sex == 1 & year%%10 == 0), aes(fill = countrystr, y = WeightedICMortalityPer100kByAge, x = year))+
       geom_bar(position = "dodge", stat = "identity")+
       ggtitle(paste(List[var], "Male Internal Cause")))
  print(MaleInternalCause)
  ggsave(MaleInternalCause, file = paste(List[var],"MaleInternalCause", ".pdf", sep= ''))
}


for (var in seq_along(List)){
  FemaleInternalCause =
    (ggplot(subset(ExternalAndInternalCauses, agecat2str == List[var] & sex == 2 & year%%10 == 0), aes(fill = countrystr, y = WeightedICMortalityPer100kByAge, x = year))+
       geom_bar(position = "dodge", stat = "identity")+
       ggtitle(paste(List[var], "Female Internal Cause")))
  print(FemaleInternalCause)
  ggsave(FemaleInternalCause, file = paste(List[var],"FemaleInternalCause", ".pdf", sep= ''))
}
