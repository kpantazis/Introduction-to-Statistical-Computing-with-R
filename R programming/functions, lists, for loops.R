

library(tidyverse)
library(magrittr)

# source script with functions
# if you are sharing functions with other, writing a (small) package may be preferable 
source("hw4_functions_sol.R")

# read data
mmrdat <- read_rds(gzcon(url("https://people.umass.edu/lalkema/mmr.rds")))
births <- read_rds(gzcon(url("https://people.umass.edu/lalkema/births.rds")))
deaths <- read_rds(gzcon(url("https://people.umass.edu/lalkema/deaths.rds")))

# just some tests with mmr_from_pm and pm_from_mmr (not for handing in)
# mmr_from_pm(0.5, 100, 1000)
# curve(mmr_from_pm(pm = x,deaths =  20*10^5, 
#                   births = 10^6), xlim = c(0,1)) 
# # check that if you apply both functions, you get the starting point back, here pm
# curve(pm_from_mmr(mmr_from_pm(pm = x, deaths =  20*10^3, births = 10^6), deaths =  20*10^3, births = 10^6), xlim = c(0,1))
# abline(0,1, lty = 2, col = 2)

# exercise 1
data_plus <- read_mmrdata(mmrdat, births = births, deaths = deaths)

# exercise 2
calculate_ave_maternal("pm", "China", data_plus)
calculate_ave_maternal("mmr", "Mozambique", data_plus)

# exercise 3
plot_data(data_plus, country_names = "China")
plot_data(data_plus, country_names = c("China", "Thailand"))

# exercise 4
# overwrite the original function, just here
mmr_from_pm <- function(pm, deaths, births){
  pm*deaths/births*10^3
}
data_plus <- read_mmrdata(mmrdat, births = births, deaths = deaths)
plot_data(data_plus, country_names = "China")
plot_data(data_plus, country_names = c("China", "Thailand"))

# The End!