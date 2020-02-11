#' Mean of injured people divided by district
#'
#'
#' The user choose the district and the function return the mean of injured people
#' divided by year.
#'
#' @param district character. District of Lombardy Region contained in the dataframe.
#' @return The mean of dead people in the choosen district divided by year (from 2010 to 2016).
#' @examples
#' district_injured(2010)
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
  return(graph_2)
}
