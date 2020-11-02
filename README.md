# Forecast_US_Election_YS6431

This repo contains code and data for forecasting the US 2020 presidential election. It was created by Yi Su. The purpose is to create a report that summarizes the results of a statistical model that we built, using the model, we will forecast the outcome of the US 2020 presidential election. Some data is unable to be shared publicly. We detail how to get that below. The sections of this repo are: inputs, outputs, scripts.

Inputs contain data that are unchanged from their original. Since they are not to be shared publicly, no input file has been pushed to Github.

We used two datasets: 

- [Survey data - Survey Data thankfully obtained from Democracy Fund and UCLA Nationscape dataset, requested from: 'https://www.voterstudygroup.org/publication/nationscape-data-set'.]

- [ACS data - America Community Survey dataset thankfully obtained from from IPUMS: https://usa.ipums.org/usa/index.shtml]

Outputs the report and supporting material.

- US-Election_Yi Su.Rmd and .pdf, these are the codes for the report and the output report itself
- references.bib, this is all the references used in the report, written in biblatex format
- model8.rds, resultant model
- model6,7.rds, these are former models that will not be used, the reason for not using these is because of the divergent transitions during adaption period.

Scripts contain R scripts that take inputs and outputs and produce outputs. These are:

- 01_data_cleaning.R, 
- 02_data_preparation.R

The US_Election_Yi_Su.Rproj is the R project where all the work of the report occured, this is included for reproducibility.
