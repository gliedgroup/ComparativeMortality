#Graph of All Females -.25-+.75

AllCountriesFemale <- subset(AddCoef, Model =="AllCountriesFemale") # Subset All Female Model

# Plot X Axis is YearDecade
ggplot(data = AllCountriesFemale, aes(x=year, y = sum, group = agecat))+
  geom_line(aes(color = agecat))+
  geom_point(aes(color=agecat))+
  labs(title = "All Countries Female")+
  labs(x = "Year Decade")+
  labs(y = "Coefficient") + 
  ylim(-.3, 0.9)

#Plot X Axis is Age Category
ggplot(data = AllCountriesFemale, aes(x=agecat, y = sum, group = year))+
  geom_line(aes(color = year))+
  geom_point(aes(color=year))+
  labs(title = "All Countries Female")+
  labs(x = "Age Category")+
  labs(y = "Coefficient") + 
  ylim(-.3, 0.9)


#Graph of All Males

AllCountriesMale <- subset(AddCoef, Model =="AllCountriesMale") # Subset All Male Model

# Plot X Axis is YearDecade
ggplot(data = AllCountriesMale, aes(x=year, y = sum, group = agecat))+
  geom_line(aes(color = agecat))+
  geom_point(aes(color=agecat))+
  labs(title = "All Countries Male")+
  labs(x = "Year Decade")+
  labs(y = "Coefficient") + ylim(-.3, 0.9)

#Plot X Axis is Age Category
ggplot(data = AllCountriesMale, aes(x=agecat, y = sum, group = year))+
  geom_line(aes(color = year))+
  geom_point(aes(color=year))+
  labs(title = "All Countries Male")+
  labs(x = "Age Category")+
  labs(y = "Coefficient") + 
  ylim(-.3, 0.9)

#Graph of All Totals

AllCountriesTotal <- subset(AddCoef, Model =="AllCountriesTotal") # Subset All Total Model

# Plot X Axis is YearDecade
ggplot(data = AllCountriesTotal, aes(x=year, y = sum, group = agecat))+
  geom_line(aes(color = agecat))+
  geom_point(aes(color=agecat))+
  labs(title = "All Countries Total")+
  labs(x = "Year Decade")+
  labs(y = "Coefficient") + 
  ylim(-.3, 0.9)

#Plot X Axis is Age Category
ggplot(data = AllCountriesTotal, aes(x=agecat, y = sum, group = year))+
  geom_line(aes(color = year))+
  geom_point(aes(color=year))+
  labs(title = "All Countries Total")+
  labs(x = "Age Category")+
  labs(y = "Coefficient") + 
  ylim(-.3, 0.9)
