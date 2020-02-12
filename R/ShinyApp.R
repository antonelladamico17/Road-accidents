#' Road accidents Shiny App
#'
#' @description Run Road Accidents Shiny App.
#'
#' @return Shiny App
#'
#' @export
#'
roadaccidents <- function(){
  dir <- system.file("App", package = "roadaccidents")
  shiny::runApp(dir, launch.browser = T, display.mode = "normal")
 }



