#' Mean of injured people per district in a specific year
#'
#'
#' The user choose the year and the function return the mean of injured people
#' divided by district
#'
#' @param year numeric. Year for which the user want to see the analysis (from 2010 to 2016).
#' @return The mean of injured people in the choosen year divided by district.
#' @examples
#' year_injured(2010)
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
  return(graph_4)
}
