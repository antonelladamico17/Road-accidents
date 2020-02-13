#' Mean of Injured People (Year)
#'
#' @description Mean of injured people divided by district in a specific year.
#'
#' @param data data.frame.
#' @param year numeric. Year (2010 to 2016) for which calculating the mean.
#' @return The mean of injured people in the choosen year divided by district.
#' @examples
#' year_injured(2010)
#'
#' @export
#' @importFrom magrittr %>%
year_injured <- function(year, data = NULL) {
  if(is.null(data)){
    data <- getDataset()}
    yearInj <- (
      data %>%
        dplyr::select(anno_incidente, provincia, totale_feriti) %>%
        dplyr::filter(anno_incidente == year) %>%
        dplyr::group_by(provincia) %>%
        dplyr::summarize (mean = mean(totale_feriti, na.rm = TRUE))
    )
    return(yearInj)
}





