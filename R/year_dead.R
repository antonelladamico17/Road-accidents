#' Mean of dead people per district in a specific year
#'
#'
#' The user choose the year and the function return the mean of dead people
#' divided by district
#'
#' @param year numeric. Year for which the user want to see the analysis (from 2010 to 2016).
#' @return A plot with the mean of dead people in the choosen year divided by district.
#' @examples
#' year_dead()
#'
#' @export



year_dead <- function(year) {
  graph_3 <- (
    data %>%
      select(data, anno_incidente, provincia, totale_morti) %>%
      filter(data, anno_incidente == year) %>%
      group_by(data, provincia) %>%
      summarize (mean = mean(totale_morti, na.rm = TRUE))

  )

  # plot_3 <-
  #   plot_ly(
  #     data = graph_3,
  #     x = ~ provincia,
  #     y = ~ mean,
  #     name = "Dead",
  #     type = 'scatter',
  #     mode = "markers",
  #     marker = list(color = "#c71585")
  #   ) %>%
  #
  #
  #   layout(
  #     title = sprintf("Dead people divided by district in %d", year),
  #     yaxis = list(title = "Mean of dead people"),
  #     xaxis = list(title = "District"),
  #     margin = list(l = 100)
  #   )
  #
  # print(plot_3)
  return(graph_3)
}
