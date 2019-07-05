* Year == 1960 | Year == 1961 | Year == 1962 | Year == 1963 | Year == 1964 | Year == 1965 | Year == 1966 | Year == 1967 | Year == 1968 | Year == 1969
* Year == 1970 | Year == 1971 | Year == 1972 | Year == 1973 | Year == 1974 | Year == 1975 | Year == 1976 | Year == 1977 | Year == 1978 | Year == 1979
* Year == 1980 | Year == 1981 | Year == 1982 | Year == 1983 | Year == 1984 | Year == 1985 | Year == 1986 | Year == 1987 | Year == 1988 | Year == 1989
* Year == 1990 | Year == 1991 | Year == 1992 | Year == 1993 | Year == 1994 | Year == 1995 | Year == 1996 | Year == 1997 | Year == 1998 | Year == 1999
* Year == 2000 | Year == 2001 | Year == 2002 | Year == 2003 | Year == 2004 | Year == 2005 | Year == 2006 | Year == 2008 | Year == 2009 | Year == 2007
* Year == 2010 | Year == 2011 | Year == 2012 | Year == 2013 | Year == 2014 | Year == 2015 | Year == 2016 | Year == 2017 | Year == 2018
*

* By Year Decade

*Females

eststo Female1960s: reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 1 & (Year == 1960 | Year == 1961 | Year == 1962 | Year == 1963 | Year == 1964 | Year == 1965 | Year == 1966 | Year == 1967 | Year == 1968 | Year == 1969 )
eststo Female1970s: reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 1 & (Year == 1970 | Year == 1971 | Year == 1972 | Year == 1973 | Year == 1974 | Year == 1975 | Year == 1976 | Year == 1977 | Year == 1978 | Year == 1979 )
eststo Female1980s: reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 1 & ( Year == 1980 | Year == 1981 | Year == 1982 | Year == 1983 | Year == 1984 | Year == 1985 | Year == 1986 | Year == 1987 | Year == 1988 | Year == 1989 )
eststo Female1990s: reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 1 & (Year == 1990 | Year == 1991 | Year == 1992 | Year == 1993 | Year == 1994 | Year == 1995 | Year == 1996 | Year == 1997 | Year == 1998 | Year == 1999 )
eststo Female2000s: reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 1 & (Year == 2000 | Year == 2001 | Year == 2002 | Year == 2003 | Year == 2004 | Year == 2005 | Year == 2006 | Year == 2008 | Year == 2009 | Year == 2007 )
eststo Female2010s: reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 1 & (Year == 2010 | Year == 2011 | Year == 2012 | Year == 2013 | Year == 2014 | Year == 2015 | Year == 2016 | Year == 2017 | Year == 2018 )

*Males
eststo Male1960s: reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 2 & (Year == 1960 | Year == 1961 | Year == 1962 | Year == 1963 | Year == 1964 | Year == 1965 | Year == 1966 | Year == 1967 | Year == 1968 | Year == 1969 |Year == 1965)
eststo Male1970s: reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 2 & (Year == 1970 | Year == 1971 | Year == 1972 | Year == 1973 | Year == 1974 | Year == 1975 | Year == 1976 | Year == 1977 | Year == 1978 | Year == 1979)
eststo Male1980s: reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 2 & ( Year == 1980 | Year == 1981 | Year == 1982 | Year == 1983 | Year == 1984 | Year == 1985 | Year == 1986 | Year == 1987 | Year == 1988 | Year == 1989)
eststo Male1990s: reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 2 & (Year == 1990 | Year == 1991 | Year == 1992 | Year == 1993 | Year == 1994 | Year == 1995 | Year == 1996 | Year == 1997 | Year == 1998 | Year == 1999 )
eststo Male2000s: reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 2 & (Year == 2000 | Year == 2001 | Year == 2002 | Year == 2003 | Year == 2004 | Year == 2005 | Year == 2006 | Year == 2008 | Year == 2009 | Year == 2007)
eststo Male2010s: reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 2 & (Year == 2010 | Year == 2011 | Year == 2012 | Year == 2013 | Year == 2014 | Year == 2015 | Year == 2016 | Year == 2017 | Year == 2018)

*Total
eststo Total1960s: reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 3& (Year == 1960 | Year == 1961 | Year == 1962 | Year == 1963 | Year == 1964 | Year == 1965 | Year == 1966 | Year == 1967 | Year == 1968 | Year == 1969 |Year == 1965)
eststo Total1970s: reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 3& (Year == 1970 | Year == 1971 | Year == 1972 | Year == 1973 | Year == 1974 | Year == 1975 | Year == 1976 | Year == 1977 | Year == 1978 | Year == 1979 )
eststo Total1980s: reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 3& ( Year == 1980 | Year == 1981 | Year == 1982 | Year == 1983 | Year == 1984 | Year == 1985 | Year == 1986 | Year == 1987 | Year == 1988 | Year == 1989)
eststo Total1990s: reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 3& (Year == 1990 | Year == 1991 | Year == 1992 | Year == 1993 | Year == 1994 | Year == 1995 | Year == 1996 | Year == 1997 | Year == 1998 | Year == 1999 )
eststo Total2000s: reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 3& (Year == 2000 | Year == 2001 | Year == 2002 | Year == 2003 | Year == 2004 | Year == 2005 | Year == 2006 | Year == 2008 | Year == 2009 | Year == 2007 )
eststo Total2010s: reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 3& (Year == 2010 | Year == 2011 | Year == 2012 | Year == 2013 | Year == 2014 | Year == 2015 | Year == 2016 | Year == 2017 | Year == 2018 )


esttab using lnMortalityi.Agei.Yeari.Year##i.Ageib15country.csv, nostar not keep(1.country 2.country 3.country 4.country 5.country 6.country 7.country 8.country 9.country 10.country 11.country 12.country 13.country 14.country 15.country 16.country) mtitles label

*By Birth Cohort Decade


* Females

eststo Female1880 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 1 & birthdecade == 1880
eststo Female1890 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 1 & birthdecade == 1890
eststo Female1900 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 1 & birthdecade == 1900
eststo Female1910 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 1 & birthdecade == 1910
eststo Female1920 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 1 & birthdecade == 1920
eststo Female1930 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 1 & birthdecade == 1930
eststo Female1940 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 1 & birthdecade == 1940
eststo Female1950 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 1 & birthdecade == 1950
eststo Female1960 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 1 & birthdecade == 1960
eststo Female1970 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 1 & birthdecade == 1970
eststo Female1980 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 1 & birthdecade == 1980
eststo Female1990 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 1 & birthdecade == 1990
eststo Female2000 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 1 & birthdecade == 2000
eststo Female2010 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 1 & birthdecade == 2010

* Males



eststo Male1880 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 2 & birthdecade == 1880
eststo Male1890 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 2 & birthdecade == 1890
eststo Male1900 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 2 & birthdecade == 1900
eststo Male1910 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 2 & birthdecade == 1910
eststo Male1920 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 2 & birthdecade == 1920
eststo Male1930 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 2 & birthdecade == 1930
eststo Male1940 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 2 & birthdecade == 1940
eststo Male1950 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 2 & birthdecade == 1950
eststo Male1960 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 2 & birthdecade == 1960
eststo Male1970 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 2 & birthdecade == 1970
eststo Male1980 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 2 & birthdecade == 1980
eststo Male1990 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 2 & birthdecade == 1990
eststo Male2000 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 2 & birthdecade == 2000
eststo Male2010 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 2 & birthdecade == 2010





* Total


eststo Total1880 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 3 & birthdecade == 1880
eststo Total1890 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 3 & birthdecade == 1890
eststo Total1900 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 3 & birthdecade == 1900
eststo Total1910 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 3 & birthdecade == 1910
eststo Total1920 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 3 & birthdecade == 1920
eststo Total1930 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 3 & birthdecade == 1930
eststo Total1940 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 3 & birthdecade == 1940
eststo Total1950 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 3 & birthdecade == 1950
eststo Total1960 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 3 & birthdecade == 1960
eststo Total1970 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 3 & birthdecade == 1970
eststo Total1980 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 3 & birthdecade == 1980
eststo Total1990 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 3 & birthdecade == 1990
eststo Total2000 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 3 & birthdecade == 2000
eststo Total2010 : reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 3 & birthdecade == 2010


esttab using LogedlnMortalityi.Agei.Yeari.Year##i.Ageib15countrybirthdecade.csv, nostar not keep(1.country 2.country 3.country 4.country 5.country 6.country 7.country 8.country 9.country 10.country 11.country 12.country 13.country 14.country 15.country 16.country) label mtitles

*by Agecat and Year Decade
global Agecat "4 5 6 7 8"

global Agecat "0 1 2 3 4 5 6 7 8"


*Females

foreach n in $Agecat{
eststo Female1960s`n': reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 1 & (Year == 1960 | Year == 1961 | Year == 1962 | Year == 1963 | Year == 1964 | Year == 1965 | Year == 1966 | Year == 1967 | Year == 1968 | Year == 1969 ) & Agecat == `n'
eststo Female1970s`n': reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 1 & (Year == 1970 | Year == 1971 | Year == 1972 | Year == 1973 | Year == 1974 | Year == 1975 | Year == 1976 | Year == 1977 | Year == 1978 | Year == 1979 ) & Agecat == `n'
eststo Female1980s`n': reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 1 & ( Year == 1980 | Year == 1981 | Year == 1982 | Year == 1983 | Year == 1984 | Year == 1985 | Year == 1986 | Year == 1987 | Year == 1988 | Year == 1989 ) & Agecat == `n'
eststo Female1990s`n': reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 1 & (Year == 1990 | Year == 1991 | Year == 1992 | Year == 1993 | Year == 1994 | Year == 1995 | Year == 1996 | Year == 1997 | Year == 1998 | Year == 1999) & Agecat == `n'
eststo Female2000s`n': reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 1 & (Year == 2000 | Year == 2001 | Year == 2002 | Year == 2003 | Year == 2004 | Year == 2005 | Year == 2006 | Year == 2008 | Year == 2009 | Year == 2007 ) & Agecat == `n'
eststo Female2010s`n': reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 1 & (Year == 2010 | Year == 2011 | Year == 2012 | Year == 2013 | Year == 2014 | Year == 2015 | Year == 2016 | Year == 2017 | Year == 2018 ) & Agecat == `n'
}


*Males


foreach n in $Agecat{
eststo Male1960s`n': reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 2 & (Year == 1960 | Year == 1961 | Year == 1962 | Year == 1963 | Year == 1964 | Year == 1965 | Year == 1966 | Year == 1967 | Year == 1968 | Year == 1969 ) & Agecat == `n'
eststo Male1970s`n': reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 2 & (Year == 1970 | Year == 1971 | Year == 1972 | Year == 1973 | Year == 1974 | Year == 1975 | Year == 1976 | Year == 1977 | Year == 1978 | Year == 1979 ) & Agecat == `n'
eststo Male1980s`n': reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 2 & ( Year == 1980 | Year == 1981 | Year == 1982 | Year == 1983 | Year == 1984 | Year == 1985 | Year == 1986 | Year == 1987 | Year == 1988 | Year == 1989 ) & Agecat == `n'
eststo Male1990s`n': reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 2 & (Year == 1990 | Year == 1991 | Year == 1992 | Year == 1993 | Year == 1994 | Year == 1995 | Year == 1996 | Year == 1997 | Year == 1998 | Year == 1999 ) & Agecat == `n'
eststo Male2000s`n': reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 2 & (Year == 2000 | Year == 2001 | Year == 2002 | Year == 2003 | Year == 2004 | Year == 2005 | Year == 2006 | Year == 2008 | Year == 2009 | Year == 2007 ) & Agecat == `n'
eststo Male2010s`n': reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 2 & (Year == 2010 | Year == 2011 | Year == 2012 | Year == 2013 | Year == 2014 | Year == 2015 | Year == 2016 | Year == 2017 | Year == 2018  ) & Agecat == `n'
}

*Total

foreach n in $Agecat{
eststo Total1960s`n': reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 3 & (Year == 1960 | Year == 1961 | Year == 1962 | Year == 1963 | Year == 1964 | Year == 1965 | Year == 1966 | Year == 1967 | Year == 1968 | Year == 1969 |Year == 1965) & Agecat == `n'
eststo Total1970s`n': reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 3 & (Year == 1970 | Year == 1971 | Year == 1972 | Year == 1973 | Year == 1974 | Year == 1975 | Year == 1976 | Year == 1977 | Year == 1978 | Year == 1979) & Agecat == `n'
eststo Total1980s`n': reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 3 & ( Year == 1980 | Year == 1981 | Year == 1982 | Year == 1983 | Year == 1984 | Year == 1985 | Year == 1986 | Year == 1987 | Year == 1988 | Year == 1989 ) & Agecat == `n'
eststo Total1990s`n': reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 3 & (Year == 1990 | Year == 1991 | Year == 1992 | Year == 1993 | Year == 1994 | Year == 1995 | Year == 1996 | Year == 1997 | Year == 1998 | Year == 1999 ) & Agecat == `n'
eststo Total2000s`n': reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 3 & (Year == 2000 | Year == 2001 | Year == 2002 | Year == 2003 | Year == 2004 | Year == 2005 | Year == 2006 | Year == 2008 | Year == 2009 | Year == 2007 ) & Agecat == `n'
eststo Total2010s`n': reg lnMortality i.Age i.Year i.Year##i.Age ib(15).country if sex == 3 & (Year == 2010 | Year == 2011 | Year == 2012 | Year == 2013 | Year == 2014 | Year == 2015 | Year == 2016 | Year == 2017 | Year == 2018  ) & Agecat == `n'
}

esttab using lnMortalityi.Agei.Yeari.Year##i.Ageib15countrybyDecadeAndAgeCat.csv, nostar not keep(1.country 2.country 3.country 4.country 5.country 6.country 7.country 8.country 9.country 10.country 11.country 12.country 13.country 14.country 15.country 16.country) label mtitles
