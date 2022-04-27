#### Preamble ####
# Purpose: Clean the data downloaded from tidyquant.
# Author: Mingyang Li
# Data: April 27 2022
# Contact: wowsmyl.li@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
library(tidyquant)
library(haven)
library(tidyverse)

# get data from tidyquant

options("getSymbols.warning4.0"=FALSE)
options("getSymbols.yahoo.warning"=FALSE)

gme <- getSymbols("GME", from = '2020-11-01',
                  to = "2022-04-22", warnings = FALSE,
                  auto.assign = FALSE)
         

#### save data ####
write.csv(gme, "inputs/data/gme.csv")


         