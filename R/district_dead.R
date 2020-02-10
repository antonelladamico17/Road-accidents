#' Mean of dead people divided by district
#'
#'
#' The user choose the district and the function return the mean of dead people
#' divided by year.
#'
#' @param district character. District of Lombardy Region contained in the dataframe.
#' @return A plot with the mean of dead people in the choosen district divided by year (from 2010 to 2016).
#' @examples
#' district_dead()
#'
#' @export



district_dead <- function(district) {
  graph_1 <- (
    data %>%
      select(anno_incidente, provincia, totale_morti) %>%
      filter(provincia == district) %>%
      group_by(anno_incidente) %>%
      summarize (mean = mean(totale_morti, na.rm = TRUE))
  )

  # plot_1 <-
  #   plot_ly(
  #     data = graph_1,
  #     x = ~ anno_incidente,
  #     y = ~ mean,
  #     name = "media",
  #     type = 'scatter',
  #     mode = "markers",
  #     marker = list(color = "#c71585")
  #   ) %>%
  #   layout(
  #     title = sprintf("Dead people in %s from 2010 to 2016", district),
  #     xaxis = list(title = "Year"),
  #     yaxis = list(title = "Mean"),
  #     margin = list(l = 100)
  #   )
  #
  # print(plot_1)
  return(graph_1)
}
