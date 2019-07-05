install.packages("readstata13")
library(readstata13)
library(tidyverse)
allcountries <- read.dta13("C:/Users/sw1386/Downloads/AllCountries.dta")
n<-names(allcountries)
allc_rb<-c(allcountries [,2:length(n)])
allc_rb_ul<-data.frame(unlist(allc_rb))

write.csv(allc_rb_ul, file="C:/Users/sw1386/Downloads/allc_rb_ul.csv")
