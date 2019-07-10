library(readxl)
TripleInteractionBySex <- read_excel("TripleInteractionBySex.xlsx")
JustTriple <-TripleInteractionBySex[c(1,179:234)]
year <- c("year" ,1960, 1970, 1980, 1990, 2000, 2010)

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

#All Countries Male
AllCountriesMale <- JustTriple[c(2), c(1, 10:15, 17:22, 24:29, 31:36, 38:43, 45:50, 52:57)]
mAllCountriesMale <- melt(AllCountriesMale, id=c("Model"))
mAllCountriesMale$year<- str_sub(mAllCountriesMale$variable, start = -4)# Get Year 
mAllCountriesMale$agecat <- substring(mAllCountriesMale$variable,10,14) # Get Age Cat
mAllCountriesMale$agecat <- revalue(mAllCountriesMale$agecat, c("80_Ye"= "80")) #Rename 80s

ggplot(data = mAllCountriesMale, aes(x=year, y = value, group = agecat))+
  geom_line(aes(color = agecat))+
  geom_point(aes(color=agecat))+
  labs(title = "All Countries Male")+
  labs(x = "Year Decade")+
  labs(y = "Coefficient")

#All Countries TotalNoLag
AllCountriesTotalNoLag <- JustTriple[c(3), c(1, 10:15, 17:22, 24:29, 31:36, 38:43, 45:50, 52:57)]
mAllCountriesTotalNoLag <- melt(AllCountriesTotalNoLag, id=c("Model"))
mAllCountriesTotalNoLag$year<- str_sub(mAllCountriesTotalNoLag$variable, start = -4)# Get Year 
mAllCountriesTotalNoLag$agecat <- substring(mAllCountriesTotalNoLag$variable,10,14) # Get Age Cat
mAllCountriesTotalNoLag$agecat <- revalue(mAllCountriesTotalNoLag$agecat, c("80_Ye"= "80")) #Rename 80s

ggplot(data = mAllCountriesTotalNoLag, aes(x=year, y = value, group = agecat))+
  geom_line(aes(color = agecat))+
  geom_point(aes(color=agecat))+
  labs(title = "All Countries TotalNoLag")+
  labs(x = "Year Decade")+
  labs(y = "Coefficient")

##All Countries Female NoLag

AllCountriesFemaleNoLag <- JustTriple[c(4), c(1, 10:15, 17:22, 24:29, 31:36, 38:43, 45:50, 52:57)]
mAllCountriesFemaleNoLag <- melt(AllCountriesFemaleNoLag, id=c("Model"))
mAllCountriesFemaleNoLag$year<- str_sub(mAllCountriesFemaleNoLag$variable, start = -4)# Get Year 
mAllCountriesFemaleNoLag$agecat <- substring(mAllCountriesFemaleNoLag$variable,10,14) # Get Age Cat
mAllCountriesFemaleNoLag$agecat <- revalue(mAllCountriesFemaleNoLag$agecat, c("80_Ye"= "80")) #Rename 80s

ggplot(data = mAllCountriesFemaleNoLag, aes(x=year, y = value, group = agecat))+
  geom_line(aes(color = agecat))+
  geom_point(aes(color=agecat))+
  labs(title = "All Countries FemaleNoLag")+
  labs(x = "Year Decade")+
  labs(y = "Coefficient")

#All Countries Male NoLag
AllCountriesMaleNoLag <- JustTriple[c(5), c(1, 10:15, 17:22, 24:29, 31:36, 38:43, 45:50, 52:57)]
mAllCountriesMaleNoLag <- melt(AllCountriesMaleNoLag, id=c("Model"))
mAllCountriesMaleNoLag$year<- str_sub(mAllCountriesMaleNoLag$variable, start = -4)# Get Year 
mAllCountriesMaleNoLag$agecat <- substring(mAllCountriesMaleNoLag$variable,10,14) # Get Age Cat
mAllCountriesMaleNoLag$agecat <- revalue(mAllCountriesMaleNoLag$agecat, c("80_Ye"= "80")) #Rename 80s

ggplot(data = mAllCountriesMaleNoLag, aes(x=year, y = value, group = agecat))+
  geom_line(aes(color = agecat))+
  geom_point(aes(color=agecat))+
  labs(title = "All Countries MaleNoLag")+
  labs(x = "Year Decade")+
  labs(y = "Coefficient")

#All Countries TotalNoLag 
AllCountriesTotalNoLag <- JustTriple[c(6), c(1, 10:15, 17:22, 24:29, 31:36, 38:43, 45:50, 52:57)]
mAllCountriesTotalNoLag <- melt(AllCountriesTotalNoLag, id=c("Model"))
mAllCountriesTotalNoLag$year<- str_sub(mAllCountriesTotalNoLag$variable, start = -4)# Get Year 
mAllCountriesTotalNoLag$agecat <- substring(mAllCountriesTotalNoLag$variable,10,14) # Get Age Cat
mAllCountriesTotalNoLag$agecat <- revalue(mAllCountriesTotalNoLag$agecat, c("80_Ye"= "80")) #Rename 80s

ggplot(data = mAllCountriesTotalNoLag, aes(x=year, y = value, group = agecat))+
  geom_line(aes(color = agecat))+
  geom_point(aes(color=agecat))+
  labs(title = "All Countries TotalNoLag")+
  labs(x = "Year Decade")+
  labs(y = "Coefficient")

