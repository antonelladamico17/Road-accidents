#' Mean of injured people divided by district
#'
#'
#' The user choose the district and the function return the mean of injured people
#' divided by year.
#'
#' @param district character. District of Lombardy Region contained in the dataframe.
#' @return A plot with the mean of dead people in the choosen district divided by year (from 2010 to 2016).
#' @examples
#' district_injured()
#'
#' @export

district_injured <- function(district) {
  graph_2 <- (
    data %>%
      select(anno_incidente, provincia, totale_feriti) %>%
      filter(provincia == district) %>%
      group_by(anno_incidente) %>%
      summarize (mean = mean(totale_feriti, na.rm = TRUE))
  )

  # plot_2 <-
  #   plot_ly(
  #     data = graph_2,
  #     x = ~ anno_incidente,
  #     y = ~ mean,
  #     name = "media",
  #     type = 'scatter',
  #     mode = "markers",
  #     marker = list(color = "#c71585")
  #   ) %>%
  #   layout(
  #     title = sprintf("Injured people in %s from 2010 to 2016", district),
  #     xaxis = list(title = "Year"),
  #     yaxis = list(title = "Mean"),
  #     margin = list(l = 100)
  #   )
  #
  # print(plot_2)
  return(graph_2)
}
