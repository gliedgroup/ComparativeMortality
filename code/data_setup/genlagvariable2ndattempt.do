 use "G:\Users\bz22\Desktop\Deaths of Dispair Project\Regression\Before 1960\AutoRegressive Models\RedoLagVar\All Countries 5-80 1940-Present.dta"

 gen Year2 = Year + 10
 gen Age2 = Age + 10

 drop Year
 drop Age

 rename Year2 Year
 rename Age2 Age

 rename Mortality Mortality_10
 save "G:\Users\bz22\Desktop\Deaths of Dispair Project\Regression\Before 1960\AutoRegressive Models\RedoLagVar\All Countries 5-80 1940-Present2.dta"

 clear
use "G:\Users\bz22\Desktop\Deaths of Dispair Project\Regression\Before 1960\AutoRegressive Models\RedoLagVar\All Countries 5-80 1940-Present.dta"
merge 1:1 Year Age country sex using "G:\Users\bz22\Desktop\Deaths of Dispair Project\Regression\Before 1960\AutoRegressive Models\RedoLagVar\All Countries 5-80 1940-Present2.dta"
drop if Mortality == .

save "G:\Users\bz22\Desktop\Deaths of Dispair Project\Regression\Before 1960\AutoRegressive Models\RedoLagVar\All Countries 5-80 1940-Present LagVar.dta"
