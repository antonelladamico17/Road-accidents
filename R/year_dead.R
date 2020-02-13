#' Mean of Dead People (Year)
#'
#' @description Mean of dead people divided by district in a specific year
#'
#' @param data data.frame.
#' @param year numeric. Year (2010 to 2016) for which calculating the mean.
#' @return { The mean of dead people in the choosen year divided by district. }
#' @examples
#' year_dead(2010)
#'
#' @export
#' @importFrom magrittr %>%
year_dead <- function(year, data = NULL) {
  if(is.null(data)){
    data <- getDataset()}
  yearDe <- (
    data %>%
      dplyr::select(anno_incidente, provincia, totale_morti) %>%
      dplyr::filter(anno_incidente == year) %>%
      dplyr::group_by(provincia) %>%
      dplyr::summarize (mean = mean(totale_morti, na.rm = TRUE))
    )
  return(yearDe)
}
