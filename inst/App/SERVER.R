library(dplyr)

# data <- jsonlite::fromJSON("https://www.dati.lombardia.it/resource/kfsx-gizw.json")
# data$anno_incidente <- as.numeric(data$anno_incidente)


# data <- getData()

#Shiny App Server

shiny::shinyServer(function(input, output, session) {


  # data <- jsonlite::fromJSON("https://www.dati.lombardia.it/resource/kfsx-gizw.json")
  # data$anno_incidente <- as.numeric(data$anno_incidente)

  # Render plot in main panel

  output$plot  <- plotly::renderPlotly({
    data <- getData()
        meanYear = data.frame(year_dead(input$year))


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
              "Dead people divided by district in"),
            yaxis = list(title = "Mean of dead people"),
            xaxis = list(title = "District"),
            margin = list(l = 100)
          )


  })

  output$plot1  <- plotly::renderPlotly({
    mean1Year = data.frame(district_dead(input$district))


    plotly::plot_ly(
      data = mean1Year ,
      x = ~ mean1Year$anno_incidente,
      y = ~ mean1Year$mean,
      name = "Dead",
      type = 'scatter',
      mode = "markers",
      marker = list(color = "#c71585")
    ) %>%


      plotly::layout(
        title = sprintf(
          "Dead people divided by district in"),
        yaxis = list(title = "Mean of dead people"),
        xaxis = list(title = "Year"),
        margin = list(l = 100)
      )

})

})
