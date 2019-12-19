library(tidyverse)

# st_gallen <- darksky::get_forecast_for(47.424740, 9.370921, Sys.Date() + 1)

tbl_interest <-
  dataseries::ds(
    c("ch_snb_rendoblim.1j", "ch_snb_rendoblim.10j")
  )

dir.create("data", showWarnings = FALSE)
saveRDS(tbl_interest, "data/interest.rds")
