#' Plots a time series
#'
#' Creates a plot for a ts-boxable dataset.
#'
#' @param data A data frame with `time`, `value` and `id` columns.
plot_time_series <- function(data) {
  data %>%
    tsbox::ts_long() %>%
    ggplot(aes(x = time, y = value, color = id)) +
    geom_line() +
    labs(x = "Time", y = "Value", color = "Series")
}
