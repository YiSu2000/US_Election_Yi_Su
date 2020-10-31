#### Preamble ####
# Purpose: Prepare and clean the survey data downloaded from IPUMS: https://usa.ipums.org/usa/index.shtml
# Author: Yi Su [CHANGE THIS TO YOUR NAME!!!!]
# Data: 29 October 2020
# Contact: jordan.su@mail.utoronto.ca
# License: MIT
# Pre-requisites: 
# - Need to have downloaded the ACS data and saved it to inputs/data
# - Don't forget to gitignore it!


#### Workspace setup ####
library(haven)
library(tidyverse)
# Read in the raw data. 
raw_data <- read_dta("inputs/data/usa_00002.dta"
                     )
# Add the labels
raw_data <- labelled::to_factor(raw_data)

# Just keep some variables that may be of interest (change 
# this depending on your interests)
names(raw_data)

reduced_data <- 
  raw_data %>% 
  select(stateicp,
         sex, 
         age, 
         race, 
         hhincome,
         educ,
         empstat)
rm(raw_data)
write_csv(reduced_data, "reduced_data_post_strat_1.csv")         

#### What's next? ####



         