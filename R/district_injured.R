#' Mean of Injured People (District)
#'
#' @description Mean of injured people divided by year in a specific district.
#'
#' @param data data.frame.
#' @param district character. District of Lombardy Region contained in the dataframe.
#' @return The mean of injured people in the choosen district divided by year (2010 to 2016).
#' @examples
#' district_injured(data, "MI")
#'
#' @export
district_injured <- function(data, district) {
  districtInj <- (
    data %>%
      select(anno_incidente, provincia, totale_feriti) %>%
      filter(provincia == district) %>%
      group_by(anno_incidente) %>%
      summarize (mean = mean(totale_feriti, na.rm = TRUE))
  )
  return(districtInj)
}
