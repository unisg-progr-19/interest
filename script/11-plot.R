library(tidyverse)

pkgload::load_all()

tbl_interest <- readRDS("data/interest.rds")

tbl_interest %>%
  plot_time_series()


tbl_interest %>%
  plot_time_series() %>%
  plotly::ggplotly()

p <-
  tbl_interest %>%
  tsbox::ts_long() %>%
  ggplot(aes(x = time, y = value, color = id)) +
  geom_line() +
  labs(x = "Time", y = "Value", color = "Series")

p

plotly::ggplotly(p)
