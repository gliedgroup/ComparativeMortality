#AllCountriesFemale

ggplot(data = mAllCountriesFemale, aes(x=agecat, y = value, group = year))+
  geom_line(aes(color = year))+
  geom_point(aes(color=year))+
  labs(title = "All Countries Female")+
  labs(x = "Age Category")+
  labs(y = "Coefficient")

#AllCountriesMale

ggplot(data = mAllCountriesMale, aes(x=agecat, y = value, group = year))+
  geom_line(aes(color = year))+
  geom_point(aes(color=year))+
  labs(title = "All Countries Male")+
  labs(x = "Age Category")+
  labs(y = "Coefficient")

#AllCountriesTotal
ggplot(data = mAllCountriesTotal, aes(x=agecat, y = value, group = year))+
  geom_line(aes(color = year))+
  geom_point(aes(color=year))+
  labs(title = "All Countries Total")+
  labs(x = "Age Category")+
  labs(y = "Coefficient")