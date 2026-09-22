# setup
library(tidyr)
library(dplyr)
library()
# upload dataset
data <- readr::read_csv("data/iowa_prison_recidivism_status_984_rows.csv")
# get to know data
c_names <- data |>
  names()
head(data) 
data |>
  filter(is.na(record_id)) |>
  nrow()
nrow(data) # 31703
# all identifiers are NA - clean
data_clean1 <- data |>
  select(-c(offender_cd, birth_date))
data_clean1 <- data_clean1 |>
  select(-c(violence_risk, total_violence_score, victimization_risk,
   total_victimization_score, work_unit_region_nm, work_unit_nm, regcd_exit))
data_clean1 <- data_clean1 |>
  mutate(record_id = row_number()) # change record_ID to keep an ID number

