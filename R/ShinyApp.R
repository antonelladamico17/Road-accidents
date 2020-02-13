#' Road accidents Shiny App
#'
#' @description Run Road Accidents Shiny App.\cr\cr
#' The application starts showing two plots: the first one shows the mean of dead or injured people divided by year,
#' the second one shows the mean of dead or injured people for the selected district during the years (2010 to 2016).\cr
#' It is possible to select whether to calculate the mean for dead people or injured people, the year and the district.\cr
#' Datas are taken by the Opendata set of the Lombardy region website.
#' @return Shiny App
#' @examples
#' roadaccidents()
#'
#' @export
roadaccidents <- function(){
  dir <- system.file("App", package = "roadaccidents")
  shiny::runApp(dir, launch.browser = T, display.mode = "normal")
 }



