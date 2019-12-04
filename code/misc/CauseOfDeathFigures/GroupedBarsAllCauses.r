ExternalAndInternalCauses$TotalDeathsByAgeCat2 = ExternalAndInternalCauses$ECDeathsByAgeCat2+ExternalAndInternalCauses$ICDeathsByAgeCat2

ExternalAndInternalCauses$TotalMortalityPer100kByAgeCat2 = ExternalAndInternalCauses$TotalDeathsByAgeCat2*100000/ExternalAndInternalCauses$popByAgeCat2

ExternalAndInternalCauses$WeightedTotMortalityPer100kByAge = ExternalAndInternalCauses$TotalMortalityPer100kByAgeCat2 * ExternalAndInternalCauses$PropByAgeCat2Pop5_85

List = unique(ExternalAndInternalCauses$agecat2str)

for (var in seq_along(List)){
  MaleTotalCause =
    (ggplot(subset(ExternalAndInternalCauses, agecat2str == List[var] & sex == 1 & year%%10 == 0), aes(fill = countrystr, y = WeightedTotMortalityPer100kByAge, x = year))+
       geom_bar(position = "dodge", stat = "identity")+
       ggtitle(paste(List[var], "Male Total Cause")))
  print(MaleTotalCause)
  ggsave(MaleTotalCause, file = paste(List[var],"MaleTotalCause", ".pdf", sep= ''))
}


for (var in seq_along(List)){
  FemaleTotalCause =
    (ggplot(subset(ExternalAndInternalCauses, agecat2str == List[var] & sex == 2 & year%%10 == 0), aes(fill = countrystr, y = WeightedTotMortalityPer100kByAge, x = year))+
       geom_bar(position = "dodge", stat = "identity")+
       ggtitle(paste(List[var], "Female Total Cause")))
  print(FemaleTotalCause)
  ggsave(FemaleTotalCause, file = paste(List[var],"FemaleTotalCause", ".pdf", sep= ''))
}
