#' Road accidents
#'
#' @description Run Road Accidents Shiny App
#' @return Shiny App
#'
#' @export





roadaccidents <- function() {
 dir <- system.file("App", package = "roadaccidents")
  shiny::runApp(dir, display.mode = "normal", launch.browser = T)
}
