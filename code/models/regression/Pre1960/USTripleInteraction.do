gen USDummy = 0
replace USDummy = 1 if country == 15

gen lnMortality_10 = ln(Mortality_10)
gen lnMortality_10Sq = ln(Mortality_10Sq)

eststo: reg Mortality Mortality_10 Mortality_10Sq i.country USDummy##i.Agecat##i.YearDecade
esttab using USDummyModelTripleInteraction.rtf, label replace
esttab using USDummyModelTripleInteraction2.csv, label nostar plain not replace


eststo AllCountries: reg lnMortality lnMortality_10 lnMortality_10Sq2 i.country USDummy##i.Agecat##i.YearDecade


drop if country == 16 | country == 13 | country == 6 | country == 5

eststo LessFiveCountries: reg lnMortality lnMortality_10 lnMortality_10Sq2 i.country USDummy##i.Agecat##i.YearDecade


esttab using lnUSDummyModelTripleInteractionlnMortSq2.csv, label mtitles nostar plain not replace
esttab using lnUSDummyModelTripleInteractionLess5Countries.csv, label nostar plain not
