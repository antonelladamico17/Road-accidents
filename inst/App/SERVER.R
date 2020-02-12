#Shiny App Server

shiny::shinyServer(function(input, output) {

  # Get data from OpenData regione Lombardia
  data <- getData()

  # Plots of the functions year_dead() and year_injured()
  output$firstPlot  <- plotly::renderPlotly({

    if (input$type == "Dead") {
      output$titleFirstPlot <- shiny::renderText(paste("Dead people divided by district in", input$year))
      meanYearDead = data.frame(year_dead(data, input$year))

      plotly::plot_ly(data = meanYearDead, x = ~ meanYearDead$provincia, y = ~ meanYearDead$mean,
                      name = "Dead", type = 'bar', marker = list(color = "#90ee90",
                                                                 line = list(color = "black",
                                                                             width = 0.5))
                      ) %>%
        plotly::layout(yaxis = list(title = "Mean of dead people"), xaxis = list(title = "District"), margin = list(l = 100))
    }

    else {
      output$titleFirstPlot <- shiny::renderText(paste("Injured people divided by district in", input$year))
      meanYearInjured = data.frame(year_injured(data, input$year))

      plotly::plot_ly(data = meanYearInjured, x = ~ meanYearInjured$provincia, y = ~ meanYearInjured$mean,
                      name = "Dead", type = 'bar', marker = list(color = "#90ee90",
                                                                 line = list(color = "black",
                                                                             width = 0.5))
                      ) %>%
        plotly::layout(yaxis = list(title = "Mean of injured people"), xaxis = list(title = "District"), margin = list(l = 100))
    }
  })

  # Plots of the functions district_dead() and district_injured()

  output$secondPlot  <- plotly::renderPlotly({

    if (input$type == "Dead") {
      output$titleSecondPlot <- shiny::renderText(paste("Dead people divided by year in", input$district))
      meanDistrictDead = data.frame(district_dead(data, input$district))

      plotly::plot_ly(data = meanDistrictDead, x = ~ meanDistrictDead$anno_incidente, y = ~ meanDistrictDead$mean,
                      name = "Dead", type = 'bar', marker = list(color = "#87cefa",
                                                                 line = list(color = "black",
                                                                             width = 0.5))
                      ) %>%
        plotly::layout(yaxis = list(title = "Mean of dead people"), xaxis = list(title = "Year"), margin = list(l = 100))
    }

    else {
      output$titleSecondPlot <- shiny::renderText(paste("Injured people divided by year in", input$district))
      meanDistrictInjured = data.frame(district_injured(data, input$district))

      plotly::plot_ly(data = meanDistrictInjured, x = ~ meanDistrictInjured$anno_incidente, y = ~ meanDistrictInjured$mean,
                      name = "Dead", type = 'bar', marker = list(color = "#87cefa",
                                                                 line = list(color = "black",
                                                                             width = 0.5))
                      ) %>%
        plotly::layout(yaxis = list(title = "Mean of injured people"), xaxis = list(title = "Year"), margin = list(l = 100))
    }

  })

})
