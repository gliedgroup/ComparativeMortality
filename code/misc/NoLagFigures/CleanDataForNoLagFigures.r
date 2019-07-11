library(readxl)
TripleInteractionBySex <- read_excel("TripleInteractionBySex.xlsx", 
                                     +     sheet = "Sheet3")
View(TripleInteractionBySex)
library(tidyverse)
library(plyr)
library(reshape2)
Triple<- TripleInteractionBySex[c(1, 177:248)]
USAOriginal <- TripleInteractionBySex[c(1,16)]

DoubleAgecat = TripleInteractionBySex[c(1, 36:43,251)]
DoubleYearDecade = TripleInteractionBySex[c(1,58:64,254 )]

USA <- USA$USA
Models <- Triple$Model
Triple$Model = NULL

TriplePUSA = sweep(Triple,1, USA, "+")
TriplePUSA$Model = Models

mTriplePUSA = melt(TriplePUSA, id=c("Model"))
mTriplePUSA$year = str_sub(mTriplePUSA$variable, start= -4)
mTriplePUSA$agecat = substring(mTriplePUSA$variable, 10,14) 
mTriplePUSA$agecat = revalue(mTriplePUSA$agecat, c("80_Ye"="80"))

mDoubleAgecat = melt(DoubleAgecat, id=c("Model"))
colnames(mDoubleAgecat)[colnames(mDoubleAgecat) == "value"] = "DoubleAgecatCoef"
mDoubleAgecat$agecat = str_sub(mDoubleAgecat$variable, start = -5)
mDoubleAgecat$agecat = revalue(mDoubleAgecat$agecat, c("y1_80" = "80"))

mDoubleYearDecade = melt(DoubleYearDecade, id=c("Model"))
colnames(mDoubleYearDecade)[colnames(mDoubleYearDecade) == "value"] = "DoubleYearDecadeCoef"
mDoubleYearDecade$year = str_sub(mDoubleYearDecade$variable, start = -4)


TripleUSAYear = merge(mTriplePUSA, mDoubleYearDecade, by=c("year", "Model"))

TripleUSAYearAge = merge(TripleUSAYear, mDoubleAgecat, by=c("agecat", "Model"))
TripleUSASums = merge(TripleUSAYearAge, USAOriginal, by="Model")

TripleUSASums$JustTriple = TripleUSASums$value -TripleUSASums$USA
TripleUSASums$value = NULL

TripleUSASums$sum = rowSums(cbind(TripleUSASums$DoubleYearDecadeCoef, TripleUSASums$DoubleAgecatCoef, TripleUSASums$JustTriple, TripleUSASums$USA))
