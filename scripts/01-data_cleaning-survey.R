#### Preamble ####
# Purpose: Prepare and clean the survey data downloaded from Democracy Fund and UCLA Nationscape dataset, requested from: 'https://www.voterstudygroup.org/publication/nationscape-data-set'.
# Author: Yi Su
# Data: 22 October 2020
# Contact: jordan.su@mail.utoronto.ca 
# License: MIT
# Pre-requisites: 
# - Need to have downloaded the data from X and save the folder that you're 
# interested in to inputs/data 
# - Don't forget to gitignore it!


#### Workspace setup ####
library(haven)
library(tidyverse)
# Read in the raw data (You might need to change this if you use a different dataset)
raw_data <- read_dta("inputs/data/ns20200625.dta")
# Add the labels
raw_data <- labelled::to_factor(raw_data)
# Just keep some variables
reduced_data <- 
  raw_data %>% 
  select(interest,
         registration,
         vote_2016,
         vote_intention,
         vote_2020,
         ideo5,
         employment,
         foreign_born,
         gender,
         census_region,
         hispanic,
         race_ethnicity,
         household_income,
         education,
         state,
         congress_district,
         age)

write_csv(reduced_data, "reduced_data.csv")

#### What else???? ####
# Maybe make some age-groups?
# Maybe check the values?
# Is vote a binary? If not, what are you going to do?
