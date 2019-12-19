library(tidyverse)

pkgload::load_all()

tbl_interest <- readRDS("data/interest.rds")

tbl_interest %>%
  plot_time_series()
