#' Mean of Dead People (Year)
#'
#' @description Mean of dead people divided by district in a specific year
#'
#' @param data data.frame.
#' @param year numeric. Year (2010 to 2016) for which calculating the mean.
#' @return The mean of dead people in the choosen year divided by district.
#' @examples
#' year_dead(data, 2010)
#'
#' @export
year_dead <- function(data, year) {
  yearDe <- (
    data %>%
      select(anno_incidente, provincia, totale_morti) %>%
      filter(anno_incidente == year) %>%
      group_by(provincia) %>%
      summarize (mean = mean(totale_morti, na.rm = TRUE))
    )
  return(yearDe)
}
