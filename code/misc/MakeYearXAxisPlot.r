

JustTriple <-TripleInteractionBySex[c(1,179:234)]
year <- c("year" ,1960, 1970, 1980, 1990, 2000, 2010)
Twenties <- JustTriple[c(1:12), c(1,10:15)]
Twenties.df <-rbind(Twenties, year = year)

mTwenties <- melt(Twenties, id = c("Model")) #reshape into long
mTwenties$year<- str_sub(mTwenties$variable, start = -4)# Get Year 

AllFemale20 <- subset(mTwenties, Model=="AllCountriesFemale")

ggplot(data = AllFemale20, aes(x = year, y = value, group = 1))+
  geom_line(color = "red")+
  geom_point()

##All Countries Female

AllCountriesFemale <- JustTriple[c(1), c(1, 10:15, 17:22, 24:29, 31:36, 38:43, 45:50, 52:57)]
mAllCountriesFemale <- melt(AllCountriesFemale, id=c("Model"))
mAllCountriesFemale$year<- str_sub(mAllCountriesFemale$variable, start = -4)# Get Year 
mAllCountriesFemale$agecat <- substring(mAllCountriesFemale$variable,10,14) # Get Age Cat
mAllCountriesFemale$agecat <- revalue(mAllCountriesFemale$agecat, c("80_Ye"= "80")) #Rename 80s

ggplot(data = mAllCountriesFemale, aes(x=year, y = value, group = agecat))+
  geom_line(aes(color = agecat))+
  geom_point(aes(color=agecat))+
  labs(title = "All Countries Female")+
  labs(x = "Year Decade")+
  labs(y = "Coefficient")
