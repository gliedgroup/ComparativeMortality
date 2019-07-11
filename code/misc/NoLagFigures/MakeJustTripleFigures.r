


# Plot X Axis is YearDecade
ggplot(data = AllCountriesFemaleNoLag, aes(x=year, y = JustTriple, group = agecat))+
  geom_line(aes(color = agecat))+
  geom_point(aes(color=agecat))+
  labs(title = "All Countries Female")+
  labs(x = "Year Decade")+
  labs(y = "Coefficient") + 
  ylim(-.9, 0.9)

#Plot X Axis is Age Category
ggplot(data = AllCountriesFemaleNoLag, aes(x=agecat, y = JustTriple, group = year))+
  geom_line(aes(color = year))+
  geom_point(aes(color=year))+
  labs(title = "All Countries Female")+
  labs(x = "Age Category")+
  labs(y = "Coefficient") + 
  ylim(-.9, 0.9)


#Graph of All Males


# Plot X Axis is YearDecade
ggplot(data = AllCountriesMaleNoLag, aes(x=year, y = JustTriple, group = agecat))+
  geom_line(aes(color = agecat))+
  geom_point(aes(color=agecat))+
  labs(title = "All Countries Male")+
  labs(x = "Year Decade")+
  labs(y = "Coefficient") +
  ylim(-.9, 0.9)

#Plot X Axis is Age Category
ggplot(data = AllCountriesMaleNoLag, aes(x=agecat, y = JustTriple, group = year))+
  geom_line(aes(color = year))+
  geom_point(aes(color=year))+
  labs(title = "All Countries Male")+
  labs(x = "Age Category")+
  labs(y = "Coefficient") + 
  ylim(-.9, 0.9)

#Graph of All Totals


# Plot X Axis is YearDecade
ggplot(data = AllCountriesTotalNoLag, aes(x=year, y = JustTriple, group = agecat))+
  geom_line(aes(color = agecat))+
  geom_point(aes(color=agecat))+
  labs(title = "All Countries Total")+
  labs(x = "Year Decade")+
  labs(y = "Coefficient") + 
  ylim(-.9, 0.9)

#Plot X Axis is Age Category
ggplot(data = AllCountriesTotalNoLag, aes(x=agecat, y = JustTriple, group = year))+
  geom_line(aes(color = year))+
  geom_point(aes(color=year))+
  labs(title = "All Countries Total")+
  labs(x = "Age Category")+
  labs(y = "Coefficient") + 
  ylim(-.9, 0.9)
