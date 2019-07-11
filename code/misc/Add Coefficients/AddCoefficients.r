library(readxl)
library(googleVis)
library(tidyverse)
library(reshape2)
library(plyr)
TripleInteractionBySex <- read_excel("TripleInteractionBySex.xlsx")
plot(gvisTable(TripleInteractionBySex))
view(TripleInteractionBySex)

JustTriple <-TripleInteractionBySex[c(1,179:234)]
plot(gvisTable(JustTriple))
Models <-JustTriple$Model 
JustTriple$Model<- NULL

plot(gvisTable(AddCoef))


USA <- TripleInteractionBySex[c(1, 18)]
USA <-c(USA$USA)

JustTriplePUSA <- sweep(JustTriple,1,USA,"+")
plot(gvisTable(JustTriplePUSA))

JustTriplePUSA$Model <- Models
mJustTriplePUSA <- melt(JustTriplePUSA, id=c("Model"))
mJustTriplePUSA$year = str_sub(mJustTriplePUSA$variable, start = - 4) # get year
mJustTriplePUSA$agecat = substring(mJustTriplePUSA$variable, 10 , 14) # get age cat
mJustTriplePUSA$agecat = revalue(mJustTriplePUSA$agecat, c("80_Ye"="80"))


DoubleYearDecade <- TripleInteractionBySex[c(1,60:66)]
mDoubleYearDecade <- melt(DoubleYearDecade, id=c("Model"))
mDoubleYearDecade$DoubleYearDecadeCoef<- mDoubleYearDecade$value
mDoubleYearDecade$value = NULL
mDoubleYearDecade$year = str_sub(mDoubleYearDecade$variable, start = - 4) # get year
mDoubleYearDecade$agecat = substring(mDoubleYearDecade$variable, 10 , 14) # get age cat
mDoubleYearDecade$agecat = NULL



DoubleAgecat <- TripleInteractionBySex[c(1, 38:45)]
mDoubleAgecat <- melt(DoubleAgecat, id=c("Model"))
mDoubleAgecat$DoubleAgecatCoef <- mDoubleAgecat$value
mDoubleAgecat$value = NULL 
mDoubleAgecat$agecat = str_sub(mDoubleAgecat$variable, start = - 5) # get agecat
mDoubleAgecat$agecat = revalue(mDoubleAgecat$agecat, c("y1_80" = "80"))


x <- merge(mJustTriplePUSA, mDoubleYearDecade, by=c("year", "Model"))

AddCoef <- merge(x, mDoubleAgecat, by=c("agecat", "Model")) # This dataframe has all of the relevant coefficients
AddCoef$sum = rowSums(cbind(AddCoef$value, AddCoef$DoubleYearDecadeCoef, AddCoef$DoubleAgecatCoef))
