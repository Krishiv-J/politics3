#### Preamble ####
# Purpose: Downloads and saves the data from [...UPDATE THIS...]
# Author: Krishiv [...UPDATE THIS...]
# Date: 5 March 2024 [...UPDATE THIS...]
# Contact: krishiv.jain@mail.utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(dataverse)
library(tidyverse)


#### Download data ####
ces2020 <-
  get_dataframe_by_name(
    filename = "CES20_Common_OUTPUT_vv.csv",
    dataset = "10.7910/DVN/E9N6PH",
    server = "dataverse.harvard.edu",
    .f = read_csv
  ) |>
  select(votereg, CC20_410, gender, educ)


#### Save data ####
write_csv(ces2020, "starter_folder-main 2/data/raw_data/ces2020.csv")