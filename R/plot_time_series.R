plot_time_series <- function(data) {
  data %>%
    tsbox::ts_long() %>%
    ggplot(aes(x = time, y = value, color = id)) +
    geom_line() +
    labs(x = "Time", y = "Value", color = "Series")
}
