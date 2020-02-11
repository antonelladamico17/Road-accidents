#' Mean of dead people divided by district
#'
#'
#' The user choose the district and the function return the mean of dead people
#' divided by year.
#'
#' @param district character. District of Lombardy Region contained in the dataframe.
#' @return The mean of dead people in the choosen district divided by year (from 2010 to 2016).
#' @examples
#' district_dead(2010)
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
  return(graph_1)
}
