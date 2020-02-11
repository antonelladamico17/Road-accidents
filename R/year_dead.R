#' Mean of dead people per district in a specific year
#'
#'
#' The user choose the year and the function return the mean of dead people
#' divided by district
#'
#' @param year numeric. Year for which the user want to see the analysis (from 2010 to 2016).
#' @return The mean of dead people in the choosen year divided by district.
#' @examples
#' year_dead(2010)
#'
#' @export



year_dead <- function(year) {
  graph_3 <- (
    data %>%
      select(anno_incidente, provincia, totale_morti) %>%
      filter(anno_incidente == year) %>%
      group_by(provincia) %>%
      summarize (mean = mean(totale_morti, na.rm = TRUE))

  )

  return(graph_3)
}
