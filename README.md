# Comparative Mortality

This project aimed to explore why the US lags behind other rich countries in life expectancy/mortality.

## Code

The most important code is located in the `data_setup` folder. Most scripts and subfolders have fairly self explanatory names.

The extra counting referred to in `EliminateDoubleCounting.do` and `EliminateTripleCounting.do` are due to the fact that the WHO ICD codes often contain supercategories. For example, the code 07A refer to the ICD 7th, List A causes which cover a variety of diseases such as infectious diseases, cancers, etc and have various A### codes. The codes A000 and 07A represent the sum of all of these codes; therefore to avoid double counting, these codes must be thrown out of the analysis.

What kept the project from moving forward was working with the cause of death data. The data are quite messy, with very many different codes. So far, we were able to split the data into deaths from external vs non external causes. Next steps may be to split data even further, though this gets exponentially more complex as you split into different causes.


The `models` folder contains code used to run multivariate regressions, which tended to include interactions between the country variable, age, and date. They also often included previous decade mortality as a predictor variable.

The `misc` folder mostly contains code that was used to make figures. These figures can be found in the `output` folder. 


## Data

Data are located in the google drive folder titled `ComparativeMortalityData`. They come from two main sources: [Human Mortality Database](https://www.mortality.org/) (HMD), and the [WHO Mortality Database](https://www.who.int/data/data-collection-tools/who-mortality-database). Additionally, we also collected data from the [OECD](https://stats.oecd.org/Index.aspx?ThemeTreeId=9) For the WHO data, I tended to download the raw datafiles.  

The folder `Pre1960 Countries` contains data from the HMD.

The folders that begin with the word Mortality contain data from the WHO. Many of the files in the `RandomStatistics` folder also contain data from the WHO, though that folder also contains data on things like inequality (Gini), United Nations population estimates. While the WHO data are much messier than the HMD or OECD data, they have key information on the

The `OECD` folder contains data from the OECD.


### Usage:

While starting a new project, first create a new repo at https://github.com/gliedgroup.

Let's assume you created a repo called `NEW_REPO` at  `gliedgroup/NEW_REPO`.

On your local machine, clone this template repo in your preferred destination.

`git clone https://github.com/gliedgroup/template.git`

`git remote rm origin`  

The first line clones this template and the second line, unlinks the this repo from it's remote origin.

Now rename the `template` folder to `NEW-REPO`, i.e. the project name.

Next step is to change the `remote origin` of this local folder to point at the clone link of   `gliedgroup/NEW_REPO`. Copy this link and run  

`git remote add origin PASTE`

Where `PASTE` is the cloning link of `gliedgroup/NEW_REPO`. The local repo is now ready!
