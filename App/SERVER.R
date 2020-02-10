library(jsonlite)
library(dplyr)
library(shiny)

data <- fromJSON("https://www.dati.lombardia.it/resource/kfsx-gizw.json")

data$anno_incidente <- as.numeric(data$anno_incidente)
# Shiny App Server

shiny::shinyServer(function(input, output, session) {
  # Render plot in main panel

  # output$text <- renderText(
  #   paste(year_dead(input$year))
  # )

  output$plot  <- plotly::renderPlotly({
        meanYear = data.frame(year_injured(input$year))


        plotly::plot_ly(
          data = meanYear ,
          x = ~ meanYear$provincia,
          y = ~ meanYear$mean,
          name = "Dead",
          type = 'scatter',
          mode = "markers",
          marker = list(color = "#c71585")
        ) %>%


          plotly::layout(
            title = sprintf(
              "Dead people divided by district in %d",
              data$anno_incidente
            ),
            yaxis = list(title = "Mean of dead people"),
            xaxis = list(title = "District"),
            margin = list(l = 100)
          )


  })

})
