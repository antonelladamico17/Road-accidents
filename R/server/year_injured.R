#' Mean of injured people per district in a specific year
#'
#'
#' The user choose the year and the function return the mean of injured people
#' divided by district
#'
#' @param year numeric. Year for which the user want to see the analysis (from 2010 to 2016).
#' @return A plot with the mean of injured people in the choosen year divided by district.
#' @examples
#' year_injured()
#'
#' @export

year_injured <- function(year) {
  graph_4 <- (
    data %>%
      select(anno_incidente, provincia, totale_feriti) %>%
      filter(anno_incidente == year) %>%
      group_by(provincia) %>%
      summarize (mean = mean(totale_feriti, na.rm = TRUE))

  )

  plot_4 <-
    plot_ly(
      data = graph_4,
      x = ~ provincia,
      y = ~ mean,
      name = "Injured",
      type = 'scatter',
      mode = "markers",
      marker = list(color = "#c71585")
    ) %>%


    layout(
      title = sprintf("Injured people divided by district in %d", year),
      yaxis = list(title = "Mean of injured people"),
      xaxis = list(title = "District"),
      margin = list(l = 100)
    )

  print(plot_4)
  return(graph_4)
}
