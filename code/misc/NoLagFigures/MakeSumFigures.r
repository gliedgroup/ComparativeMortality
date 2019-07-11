

AllCountriesFemaleNoLag <- subset(TripleUSASums, Model =="AllCountriesFemaleNoLag") # Subset All Female Model

# Plot X Axis is YearDecade
ggplot(data = AllCountriesFemaleNoLag, aes(x=year, y = sum, group = agecat))+
  geom_line(aes(color = agecat))+
  geom_point(aes(color=agecat))+
  labs(title = "All Countries Female")+
  labs(x = "Year Decade")+
  labs(y = "Coefficient") + 
  ylim(-.9, 0.9)

#Plot X Axis is Age Category
ggplot(data = AllCountriesFemaleNoLag, aes(x=agecat, y = sum, group = year))+
  geom_line(aes(color = year))+
  geom_point(aes(color=year))+
  labs(title = "All Countries Female")+
  labs(x = "Age Category")+
  labs(y = "Coefficient") + 
  ylim(-.9, 0.9)


#Graph of All Males

AllCountriesMaleNoLag <- subset(TripleUSASums, Model =="AllCountriesMaleNoLag") # Subset All Male Model

# Plot X Axis is YearDecade
ggplot(data = AllCountriesMaleNoLag, aes(x=year, y = sum, group = agecat))+
  geom_line(aes(color = agecat))+
  geom_point(aes(color=agecat))+
  labs(title = "All Countries Male")+
  labs(x = "Year Decade")+
  labs(y = "Coefficient") +
  ylim(-.9, 0.9)

#Plot X Axis is Age Category
ggplot(data = AllCountriesMaleNoLag, aes(x=agecat, y = sum, group = year))+
  geom_line(aes(color = year))+
  geom_point(aes(color=year))+
  labs(title = "All Countries Male")+
  labs(x = "Age Category")+
  labs(y = "Coefficient") + 
  ylim(-.9, 0.9)

#Graph of All Totals

AllCountriesTotalNoLag <- subset(TripleUSASums, Model =="AllCountriesTotalNoLag") # Subset All Total Model

# Plot X Axis is YearDecade
ggplot(data = AllCountriesTotalNoLag, aes(x=year, y = sum, group = agecat))+
  geom_line(aes(color = agecat))+
  geom_point(aes(color=agecat))+
  labs(title = "All Countries Total")+
  labs(x = "Year Decade")+
  labs(y = "Coefficient") + 
  ylim(-.9, 0.9)

#Plot X Axis is Age Category
ggplot(data = AllCountriesTotalNoLag, aes(x=agecat, y = sum, group = year))+
  geom_line(aes(color = year))+
  geom_point(aes(color=year))+
  labs(title = "All Countries Total")+
  labs(x = "Age Category")+
  labs(y = "Coefficient") + 
  ylim(-.9, 0.9)
