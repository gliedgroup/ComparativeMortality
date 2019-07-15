#AllCountriesFemale

ggplot(data = mAllCountriesFemale, aes(x=agecat, y = value, group = year))+
  geom_line(aes(color = year))+
  geom_point(aes(color=year))+
  labs(title = "All Countries Female")+
  labs(x = "Age Category")+
  labs(y = "Coefficient")+
  ylim(-.9, 0.9)


#AllCountriesMale

ggplot(data = mAllCountriesMale, aes(x=agecat, y = value, group = year))+
  geom_line(aes(color = year))+
  geom_point(aes(color=year))+
  labs(title = "All Countries Male")+
  labs(x = "Age Category")+
  labs(y = "Coefficient")+
  ylim(-.9, 0.9)


#AllCountriesTotal
ggplot(data = mAllCountriesTotal, aes(x=agecat, y = value, group = year))+
  geom_line(aes(color = year))+
  geom_point(aes(color=year))+
  labs(title = "All Countries Total")+
  labs(x = "Age Category")+
  labs(y = "Coefficient")+
  ylim(-.9, 0.9)




#AllCountriesFemaleNoLag

ggplot(data = mAllCountriesFemaleNoLag, aes(x=agecat, y = value, group = year))+
  geom_line(aes(color = year))+
  geom_point(aes(color=year))+
  labs(title = "All Countries FemaleNoLag")+
  labs(x = "Age Category")+
  labs(y = "Coefficient")+
  ylim(-.9, 0.9)


#AllCountriesMaleNoLag

ggplot(data = mAllCountriesMaleNoLag, aes(x=agecat, y = value, group = year))+
  geom_line(aes(color = year))+
  geom_point(aes(color=year))+
  labs(title = "All Countries MaleNoLag")+
  labs(x = "Age Category")+
  labs(y = "Coefficient")+
  ylim(-.9, 0.9)


#AllCountriesTotalNoLag
ggplot(data = mAllCountriesTotalNoLag, aes(x=agecat, y = value, group = year))+
  geom_line(aes(color = year))+
  geom_point(aes(color=year))+
  labs(title = "All Countries TotalNoLag")+
  labs(x = "Age Category")+
  labs(y = "Coefficient")+
  ylim(-.9, 0.9)
