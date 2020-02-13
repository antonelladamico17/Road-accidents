#' Mean of Injured People (District)
#'
#' @description Mean of injured people divided by year in a specific district.
#'
#' @param data data.frame.
#' @param district character. District of Lombardy Region contained in the dataframe.
#' @return The mean of injured people in the choosen district divided by year (2010 to 2016).
#' @examples
#' district_injured("MI")
#'
#' @export
#' @importFrom magrittr %>%
district_injured <- function(district, data = NULL) {
  if(is.null(data)){
    data <- getDataset()}
  districtInj <- (
    data %>%
      dplyr::select(anno_incidente, provincia, totale_feriti) %>%
      dplyr::filter(provincia == district) %>%
      dplyr::group_by(anno_incidente) %>%
      dplyr::summarize (mean = mean(totale_feriti, na.rm = TRUE))
  )
  return(districtInj)
}
