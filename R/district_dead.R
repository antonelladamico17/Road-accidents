#' Mean of Dead People (District)
#'
#' @description Mean of dead people divided by year in a specific district.
#'
#' @param data data.frame.
#' @param district character. District of Lombardy Region contained in the dataframe.
#' @return The mean of dead people in the choosen district divided by year (2010 to 2016).
#' @examples
#' district_dead(data, "MI")
#'
#' @export
district_dead <- function(data, district) {
  districtDe <- (
    data %>%
      select(anno_incidente, provincia, totale_morti) %>%
      filter(provincia == district) %>%
      group_by(anno_incidente) %>%
      summarize (mean = mean(totale_morti, na.rm = TRUE))
  )
  return(districtDe)
}
