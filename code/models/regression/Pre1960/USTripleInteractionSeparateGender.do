 use "G:\Users\bz22\Desktop\Deaths of Dispair Project\Regression\Before 1960\AutoRegressive Models\RedoLagVar\All Countries 5-80 1940-Present LagVar.dta"

 eststo AllCountriesFemale: reg lnMortality lnMortality_10 lnMortality_10Sq2 i.country USDummy##i.Agecat##i.YearDecade if sex == 1
 eststo AllCountriesMale: reg lnMortality lnMortality_10 lnMortality_10Sq2 i.country USDummy##i.Agecat##i.YearDecade if sex == 2
 eststo AllCountriesTotal: reg lnMortality lnMortality_10 lnMortality_10Sq2 i.country USDummy##i.Agecat##i.YearDecade if sex == 3

 eststo AllCountriesFemaleNoLag: reg lnMortality i.country USDummy##ib(1).Agecat##ib(1950).YearDecade if sex == 1
 eststo AllCountriesMaleNoLag: reg lnMortality i.country USDummy##ib(1).Agecat##ib(1950).YearDecade if sex == 2
 eststo AllCountriesTotalNoLag: reg lnMortality i.country USDummy##ib(1).Agecat##ib(1950).YearDecade if sex ==3


*Drop Germany Westgermany, Israel, and Taiwan
 drop if country == 16 | country == 13 | country == 6 | country == 5

eststo LessFourCountriesFemale: reg lnMortality lnMortality_10 lnMortality_10Sq2 i.country USDummy##i.Agecat##i.YearDecade if sex == 1
eststo LessFourCountriesMale: reg lnMortality lnMortality_10 lnMortality_10Sq2 i.country USDummy##i.Agecat##i.YearDecade if sex == 2
eststo LessFourCountriesTotal: reg lnMortality lnMortality_10 lnMortality_10Sq2 i.country USDummy##i.Agecat##i.YearDecade if sex ==3

eststo LessFourCountriesFemaleNoLag: reg lnMortality i.country USDummy##ib(1).Agecat##ib(1950).YearDecade if sex == 1
eststo LessFourCountriesMaleNoLag: reg lnMortality i.country USDummy##ib(1).Agecat##ib(1950).YearDecade if sex ==2
eststo LessFourCountriesTotalNoLag: reg lnMortality i.country USDummy##ib(1).Agecat##ib(1950).YearDecade if sex == 3

esttab using TripleInteractionBySex.csv, label mtitles nostar plain not replace



 
