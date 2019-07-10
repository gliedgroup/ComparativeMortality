library(ggplot2)
library(dplyr)
library(tidyr)
library(stringr)
library(plyr)
JustTriple <-TripleInteractionBySex[c(1,179:234)]

year <- c(1960, 1970, 1980, 1990, 2000, 2010)
AllFemale20 <-subset(mJustTriple, agecat =="20-29" & sex == "Female" & isFALSE(mJustTriple$NoLag) )






library(reshape2)

mJustTriple <- melt(JustTriple, id = c("Model")) #reshape into long

substrRight <- function(x, n){
  substr(x, nchar(x)-n+1, nchar(x))
}

mJustTriple$year<- str_sub(mJustTriple$variable, start = -4)# Get Year 

mJustTriple$agecat <- substring(mJustTriple$variable,10,14) # Get Age Cat
mJustTriple$agecat <- revalue(mJustTriple$agecat, c("80_Ye"= "80")) #Rename 80s

mJustTriple$nolag <- grepl("NoLag", mJustTriple$Model) 



mJustTriple$sex <- str_extract(mJustTriple$Model, "Female|Male|Total")

x <- c("mJustTriple$year", "mJustTriple$agecat", "mJustTriple$sex")

require(data.table)
setDT(mJustTriple)
sJustTriple2 <- dcast(mJustTriple, sex+nolag+agecat~year, value.var = mJustTriple$value)


if (mJustTriple$nolag == FALSE){
  mJustTriple$sex <- substring(mJustTriple$variable, 12, 13)
  
} else {
  mJustTriple$sex <-substring(mJustTriple$variable,)
}


mJustTriple$year <- NULL

AllCountriesTotal <- subset(mJustTriple, Model == "AllCountriesTotal")

Twenties <- JustTriple[c(1:12), c(1,10:15)]
Twenties.df <-rbind(Twenties, year = year)

mTwenties <- melt(Twenties, id = c("Model")) #reshape into long
mTwenties$year<- str_sub(mTwenties$variable, start = -4)# Get Year 

AllFemale20 <- subset(mTwenties, Model=="AllCountriesFemale")

ggplot(data = AllFemale20, aes(x = year, y = value, group = 1))+
  geom_line(color = "red")+
  geom_point()

