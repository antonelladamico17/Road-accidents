#' Mean of Injured People (Year)
#'
#' @description Mean of injured people divided by district in a specific year.
#'
#' @param data data.frame.
#' @param year numeric. Year (2010 to 2016) for which calculating the mean.
#' @return The mean of injured people in the choosen year divided by district.
#' @examples
#' year_injured(data, 2010)
#'
#' @export
year_injured <- function(data, year) {
  yearInj <- (
    data %>%
      select(anno_incidente, provincia, totale_feriti) %>%
      filter(anno_incidente == year) %>%
      group_by(provincia) %>%
      summarize (mean = mean(totale_feriti, na.rm = TRUE))
  )
  return(yearInj)
}
