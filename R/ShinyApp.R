#' Road accidents
#'
#' @description Run Road Accidents Shiny App
#' @return Shiny App
#'
#' @export



# This function will run the Shiny App of the R package 'roadaccidents'.

roadaccidents <- function()
  {dir <- system.file("App", package = "roadaccidents")
  shiny::runApp(dir, launch.browser = T, display.mode = "normal")
 }



