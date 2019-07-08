gen USDummy = 0
replace USDummy = 1 if country == 15

gen lnMortality_10 = ln(Mortality_10)
gen lnMortality_10Sq = ln(Mortality_10Sq)

eststo: reg Mortality Mortality_10 Mortality_10Sq i.country USDummy##i.Agecat##i.YearDecade
esttab using USDummyModelTripleInteraction.rtf, label replace
esttab using USDummyModelTripleInteraction2.csv, label nostar plain not replace


eststo: reg lnMortality lnMortality_10 lnMortality_10Sq i.country USDummy##i.Agecat##i.YearDecade
esttab using lnUSDummyModelTripleInteraction.csv, label nostar plain not

esttab using lnUSDummyModelTripleInteractionLess5Countries.csv, label nostar plain not
