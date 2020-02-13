#' Mean of Dead People (District)
#'
#' @description Mean of dead people divided by year in a specific district.
#'
#' @param data data.frame.
#' @param district character. District of Lombardy Region contained in the dataframe.
#' @return The mean of dead people in the choosen district divided by year (2010 to 2016).
#' @examples
#' district_dead("MI")
#'
#' @export
#' @importFrom magrittr %>%
district_dead <- function (district, data = NULL) {
  if(is.null(data)){
    data <- getDataset()}
  districtDe <- (
    data %>%
      dplyr::select(anno_incidente, provincia, totale_morti) %>%
      dplyr::filter(provincia == district) %>%
      dplyr::group_by(anno_incidente) %>%
      dplyr::summarize (mean = mean(totale_morti, na.rm = TRUE))
  )
  return(districtDe)
}
