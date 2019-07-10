library(ggplot2)
library(dplyr)
library(tidyr)
library(stringr)
library(plyr)
JustTriple <-TripleInteractionBySex[c(1,179:234)]

library(reshape2)

mJustTriple <- melt(JustTriple, id = c("Model")) #reshape into long

substrRight <- function(x, n){
  substr(x, nchar(x)-n+1, nchar(x))
}

mJustTriple$year<- str_sub(mJustTriple$variable, start = -4)# Get Year 

mJustTriple$agecat <- substring(mJustTriple$variable,10,14) # Get Age Cat
mJustTriple$agecat <- revalue(mJustTriple$agecat, c("80_Ye"= "80")) #Rename 80s

mJustTriple$nolag <- grepl("NoLag", mJustTriple$Model) 

x<- c("Female|Male|Total")

mJustTriple$sex <- str_extract(mJustTriple$Model, "Female|Male|Total")



if (mJustTriple$nolag == FALSE){
  mJustTriple$sex <- substring(mJustTriple$variable, 12, 13)
  
} else {
  mJustTriple$sex <-substring(mJustTriple$variable,)
}


mJustTriple$year <- NULL

AllCountriesTotal <- subset(mJustTriple, Model == "AllCountriesTotal")

sAllCountriesTotal <-spread(AllCountriesTotal, variable, value) #reshape into wide
