* CLeaning 
* gen birth year

gen birthyear = year - Age

*gen birthyear decade
gen birthyear2 = birthyear - 5
gen birthdecade = round(birthyear2, 10) 


gen lnMortality = ln(Mortality)

* By Year Decade

*Females

eststo Female1960s: reg lnMortality i.Age i.year ib(15).country if sex == 1 & (year == 1960|year == 1965)
eststo Female1970s: reg lnMortality i.Age i.year ib(15).country if sex == 1 & (year == 1970|year == 1975)
eststo Female1980s: reg lnMortality i.Age i.year ib(15).country if sex == 1 & (year == 1980 |year == 1985 | year == 1983 )
eststo Female1990s: reg lnMortality i.Age i.year ib(15).country if sex == 1 & (year == 1990|year == 1995)
eststo Female2000s: reg lnMortality i.Age i.year ib(15).country if sex == 1 & (year == 2000|year == 2005)
eststo Female2010s: reg lnMortality i.Age i.year ib(15).country if sex == 1 & (year == 2010|year == 2015 | year == 2014)

*Males
eststo Male1960s: reg lnMortality i.Age i.year ib(15).country if sex == 2 & (year == 1960|year == 1965)
eststo Male1970s: reg lnMortality i.Age i.year ib(15).country if sex == 2 & (year == 1970|year == 1975)
eststo Male1980s: reg lnMortality i.Age i.year ib(15).country if sex == 2 & (year == 1980 |year == 1985 |year == 1983 )
eststo Male1990s: reg lnMortality i.Age i.year ib(15).country if sex == 2 & (year == 1990|year == 1995)
eststo Male2000s: reg lnMortality i.Age i.year ib(15).country if sex == 2 & (year == 2000|year == 2005)
eststo Male2010s: reg lnMortality i.Age i.year ib(15).country if sex == 2 & (year == 2010|year == 2015 | year == 2014)

*Total
eststo Total1960s: reg lnMortality i.Age i.year ib(15).country if sex == 3& (year == 1960|year == 1965)
eststo Total1970s: reg lnMortality i.Age i.year ib(15).country if sex == 3& (year == 1970|year == 1975)
eststo Total1980s: reg lnMortality i.Age i.year ib(15).country if sex == 3& (year == 1980 |year == 1985 | year== 1983 )
eststo Total1990s: reg lnMortality i.Age i.year ib(15).country if sex == 3& (year == 1990|year == 1995)
eststo Total2000s: reg lnMortality i.Age i.year ib(15).country if sex == 3& (year == 2000|year == 2005)
eststo Total2010s: reg lnMortality i.Age i.year ib(15).country if sex == 3& (year == 2010|year == 2014 | year == 2015)


esttab using lnMortalityi.Agei.Yearib15country.csv, nostar not keep(1.country 2.country 3.country 4.country 5.country 6.country 7.country 8.country 9.country 10.country 11.country 12.country 13.country 14.country 15.country) mtitles

*By Birth Cohort Decade


* Females

eststo Female1880 : reg lnMortality i.Age i.year ib(15).country if sex == 1 & birthdecade == 1880
eststo Female1890 : reg lnMortality i.Age i.year ib(15).country if sex == 1 & birthdecade == 1890
eststo Female1900 : reg lnMortality i.Age i.year ib(15).country if sex == 1 & birthdecade == 1900
eststo Female1910 : reg lnMortality i.Age i.year ib(15).country if sex == 1 & birthdecade == 1910
eststo Female1920 : reg lnMortality i.Age i.year ib(15).country if sex == 1 & birthdecade == 1920
eststo Female1930 : reg lnMortality i.Age i.year ib(15).country if sex == 1 & birthdecade == 1930
eststo Female1940 : reg lnMortality i.Age i.year ib(15).country if sex == 1 & birthdecade == 1940
eststo Female1950 : reg lnMortality i.Age i.year ib(15).country if sex == 1 & birthdecade == 1950 
eststo Female1960 : reg lnMortality i.Age i.year ib(15).country if sex == 1 & birthdecade == 1960
eststo Female1970 : reg lnMortality i.Age i.year ib(15).country if sex == 1 & birthdecade == 1970
eststo Female1980 : reg lnMortality i.Age i.year ib(15).country if sex == 1 & birthdecade == 1980
eststo Female1990 : reg lnMortality i.Age i.year ib(15).country if sex == 1 & birthdecade == 1990
eststo Female2000 : reg lnMortality i.Age i.year ib(15).country if sex == 1 & birthdecade == 2000
eststo Female2010 : reg lnMortality i.Age i.year ib(15).country if sex == 1 & birthdecade == 2010

* Males



eststo Male1880 : reg lnMortality i.Age i.year ib(15).country if sex == 2 & birthdecade == 1880
eststo Male1890 : reg lnMortality i.Age i.year ib(15).country if sex == 2 & birthdecade == 1890
eststo Male1900 : reg lnMortality i.Age i.year ib(15).country if sex == 2 & birthdecade == 1900
eststo Male1910 : reg lnMortality i.Age i.year ib(15).country if sex == 2 & birthdecade == 1910
eststo Male1920 : reg lnMortality i.Age i.year ib(15).country if sex == 2 & birthdecade == 1920
eststo Male1930 : reg lnMortality i.Age i.year ib(15).country if sex == 2 & birthdecade == 1930
eststo Male1940 : reg lnMortality i.Age i.year ib(15).country if sex == 2 & birthdecade == 1940
eststo Male1950 : reg lnMortality i.Age i.year ib(15).country if sex == 2 & birthdecade == 1950 
eststo Male1960 : reg lnMortality i.Age i.year ib(15).country if sex == 2 & birthdecade == 1960
eststo Male1970 : reg lnMortality i.Age i.year ib(15).country if sex == 2 & birthdecade == 1970
eststo Male1980 : reg lnMortality i.Age i.year ib(15).country if sex == 2 & birthdecade == 1980
eststo Male1990 : reg lnMortality i.Age i.year ib(15).country if sex == 2 & birthdecade == 1990
eststo Male2000 : reg lnMortality i.Age i.year ib(15).country if sex == 2 & birthdecade == 2000
eststo Male2010 : reg lnMortality i.Age i.year ib(15).country if sex == 2 & birthdecade == 2010





* Total


eststo Total1880 : reg lnMortality i.Age i.year ib(15).country if sex == 3 & birthdecade == 1880
eststo Total1890 : reg lnMortality i.Age i.year ib(15).country if sex == 3 & birthdecade == 1890
eststo Total1900 : reg lnMortality i.Age i.year ib(15).country if sex == 3 & birthdecade == 1900
eststo Total1910 : reg lnMortality i.Age i.year ib(15).country if sex == 3 & birthdecade == 1910
eststo Total1920 : reg lnMortality i.Age i.year ib(15).country if sex == 3 & birthdecade == 1920
eststo Total1930 : reg lnMortality i.Age i.year ib(15).country if sex == 3 & birthdecade == 1930
eststo Total1940 : reg lnMortality i.Age i.year ib(15).country if sex == 3 & birthdecade == 1940
eststo Total1950 : reg lnMortality i.Age i.year ib(15).country if sex == 3 & birthdecade == 1950 
eststo Total1960 : reg lnMortality i.Age i.year ib(15).country if sex == 3 & birthdecade == 1960
eststo Total1970 : reg lnMortality i.Age i.year ib(15).country if sex == 3 & birthdecade == 1970
eststo Total1980 : reg lnMortality i.Age i.year ib(15).country if sex == 3 & birthdecade == 1980
eststo Total1990 : reg lnMortality i.Age i.year ib(15).country if sex == 3 & birthdecade == 1990
eststo Total2000 : reg lnMortality i.Age i.year ib(15).country if sex == 3 & birthdecade == 2000
eststo Total2010 : reg lnMortality i.Age i.year ib(15).country if sex == 3 & birthdecade == 2010


esttab using lnMortalityi.Agei.Yearib15countrybirthdecade.csv, nostar not keep(1.country 2.country 3.country 4.country 5.country 6.country 7.country 8.country 9.country 10.country 11.country 12.country 13.country 14.country 15.country) mtitles

*by Agecat and Year Decade

global Agecat "0 1 2 3 4 5 6 7 8"

*Females

foreach n in $Agecat{
eststo Female1960s`n': reg lnMortality i.Age i.year ib(15).country if sex == 1 & (year == 1960|year == 1965) & Agecat == `n'
eststo Female1970s`n': reg lnMortality i.Age i.year ib(15).country if sex == 1 & (year == 1970|year == 1975) & Agecat == `n'
eststo Female1980s`n': reg lnMortality i.Age i.year ib(15).country if sex == 1 & (year == 1980 |year == 1985 | year == 1983 ) & Agecat == `n'
eststo Female1990s`n': reg lnMortality i.Age i.year ib(15).country if sex == 1 & (year == 1990|year == 1995) & Agecat == `n'
eststo Female2000s`n': reg lnMortality i.Age i.year ib(15).country if sex == 1 & (year == 2000|year == 2005) & Agecat == `n'
eststo Female2010s`n': reg lnMortality i.Age i.year ib(15).country if sex == 1 & (year == 2010|year == 2015 | year == 2014) & Agecat == `n'
}


*Males


foreach n in $Agecat{
eststo Male1960s`n': reg lnMortality i.Age i.year ib(15).country if sex == 2 & (year == 1960|year == 1965) & Agecat == `n'
eststo Male1970s`n': reg lnMortality i.Age i.year ib(15).country if sex == 2 & (year == 1970|year == 1975) & Agecat == `n'
eststo Male1980s`n': reg lnMortality i.Age i.year ib(15).country if sex == 2 & (year == 1980 |year == 1985 | year == 1983 ) & Agecat == `n'
eststo Male1990s`n': reg lnMortality i.Age i.year ib(15).country if sex == 2 & (year == 1990|year == 1995) & Agecat == `n'
eststo Male2000s`n': reg lnMortality i.Age i.year ib(15).country if sex == 2 & (year == 2000|year == 2005) & Agecat == `n'
eststo Male2010s`n': reg lnMortality i.Age i.year ib(15).country if sex == 2 & (year == 2010|year == 2015 | year == 2014) & Agecat == `n'
}

*Total

foreach n in $Agecat{
eststo Total1960s`n': reg lnMortality i.Age i.year ib(15).country if sex == 3 & (year == 1960|year == 1965) & Agecat == `n'
eststo Total1970s`n': reg lnMortality i.Age i.year ib(15).country if sex == 3 & (year == 1970|year == 1975) & Agecat == `n'
eststo Total1980s`n': reg lnMortality i.Age i.year ib(15).country if sex == 3 & (year == 1980 |year == 1985 | year == 1983 ) & Agecat == `n'
eststo Total1990s`n': reg lnMortality i.Age i.year ib(15).country if sex == 3 & (year == 1990|year == 1995) & Agecat == `n'
eststo Total2000s`n': reg lnMortality i.Age i.year ib(15).country if sex == 3 & (year == 2000|year == 2005) & Agecat == `n'
eststo Total2010s`n': reg lnMortality i.Age i.year ib(15).country if sex == 3 & (year == 2010|year == 2015 | year == 2014) & Agecat == `n'
}

esttab using lnMortalityi.Agei.Yearib15countrybyDecadeAndAgeCatCorrected.csv, nostar not keep(1.country 2.country 3.country 4.country 5.country 6.country 7.country 8.country 9.country 10.country 11.country 12.country 13.country 14.country 15.country) mtitles 



** Ignore Below

*1960s
foreach n in $Agecat{
eststo Female1960s`n': reg lnMortality i.Age i.year ib(15).country if sex == 1 & (year == 1960|year == 1965) & Agecat == `n'
eststo Male1960s`n': reg lnMortality i.Age i.year ib(15).country if sex == 1 & (year == 1960|year == 1965) & Agecat == `n'
eststo Total1960s`n': reg lnMortality i.Age i.year ib(15).country if sex == 1 & (year == 1960|year == 1965) & Agecat == `n'

}

*1970s
foreach n in $Agecat{
eststo Female1970s`n': reg lnMortality i.Age i.year ib(15).country if sex == 1 & (year == 1970|year == 1975) & Agecat == `n'
eststo Male1970s`n': reg lnMortality i.Age i.year ib(15).country if sex == 1 & (year == 1970|year == 1975) & Agecat == `n'
eststo Total1970s`n': reg lnMortality i.Age i.year ib(15).country if sex == 1 & (year == 1970|year == 1975) & Agecat == `n'
}

*1980s
foreach n in $Agecat{
eststo Female1980s`n': reg lnMortality i.Age i.year ib(15).country if sex == 1 & (year == 1980 |year == 1985 | year == 1983 ) & Agecat == `n'
eststo Male1980s`n': reg lnMortality i.Age i.year ib(15).country if sex == 1 & (year == 1980 |year == 1985 | year == 1983 ) & Agecat == `n'
eststo Total1980s`n': reg lnMortality i.Age i.year ib(15).country if sex == 1 & (year == 1980 |year == 1985 | year == 1983 ) & Agecat == `n'

}

*1990s
foreach n in $Agecat{
eststo Female1990s`n': reg lnMortality i.Age i.year ib(15).country if sex == 1 & (year == 1990|year == 1995) & Agecat == `n'
eststo Male1990s`n': reg lnMortality i.Age i.year ib(15).country if sex == 1 & (year == 1990|year == 1995) & Agecat == `n'
eststo Total1990s`n': reg lnMortality i.Age i.year ib(15).country if sex == 1 & (year == 1990|year == 1995) & Agecat == `n'
}

*2000s
foreach n in $Agecat{
eststo Female2000s`n': reg lnMortality i.Age i.year ib(15).country if sex == 1 & (year == 2000|year == 2005) & Agecat == `n'
eststo Male2000s`n': reg lnMortality i.Age i.year ib(15).country if sex == 1 & (year == 2000|year == 2005) & Agecat == `n'
eststo Total2000s`n': reg lnMortality i.Age i.year ib(15).country if sex == 1 & (year == 2000|year == 2005) & Agecat == `n'
}

*2010s
foreach n in $Agecat{
eststo Female2010s`n': reg lnMortality i.Age i.year ib(15).country if sex == 1 & (year == 2010|year == 2015 | year == 2014) & Agecat == `n'
eststo Male2010s`n': reg lnMortality i.Age i.year ib(15).country if sex == 1 & (year == 2010|year == 2015 | year == 2014) & Agecat == `n'
eststo Total2010s`n': reg lnMortality i.Age i.year ib(15).country if sex == 1 & (year == 2010|year == 2015 | year == 2014) & Agecat == `n'

}

esttab using lnMortalityi.Agei.Yearib15countrybyDecadeAndAgeCat.csv, nostar not keep(1.country 2.country 3.country 4.country 5.country 6.country 7.country 8.country 9.country 10.country 11.country 12.country 13.country 14.country 15.country) mtitles 

