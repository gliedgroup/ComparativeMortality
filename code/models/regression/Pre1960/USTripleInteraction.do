gen USDummy = 0
replace USDummy = 1 if country == 15

eststo: reg Mortality Mortality_10 Mortality_10Sq i.country USDummy##i.Agecat##i.YearDecade
esttab using USDummyModelTripleInteraction.rtf, label replace
esttab using USDummyModelTripleInteraction2.csv, label nostar plain not replace
