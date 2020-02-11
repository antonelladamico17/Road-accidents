library(dplyr)

#Shiny App Server

shiny::shinyServer(function(input, output) {

  # Plots of the functions year_dead() and year_injured()

  output$plot  <- plotly::renderPlotly({
    if (input$type == "Dead") {
      output$title <-
        shiny::renderText(paste("Dead people divided by district in", input$year))
      meanYear = data.frame(year_dead(input$year))


      plotly::plot_ly(
        data = meanYear ,
        x = ~ meanYear$provincia,
        y = ~ meanYear$mean,
        name = "Dead",
        type = 'bar',
        marker = list(
          color = "#90ee90",
          line = list(color = "black", width = 0.5)
        )
      ) %>%


        plotly::layout(
          yaxis = list(title = "Mean of dead people"),
          xaxis = list(title = "District"),
          margin = list(l = 100)
        )
    }
    else {
      output$title <-
        shiny::renderText(paste("Injured people divided by district in", input$year))
      mean2Year = data.frame(year_injured(input$year))


      plotly::plot_ly(
        data = mean2Year ,
        x = ~ mean2Year$provincia,
        y = ~ mean2Year$mean,
        name = "Dead",
        type = 'bar',
        marker = list(
          color = "#90ee90",
          line = list(color = "black", width = 0.5)
        )
      ) %>%


        plotly::layout(
          yaxis = list(title = "Mean of injured people"),
          xaxis = list(title = "District"),
          margin = list(l = 100)
        )
    }
  })

  # Plots of the functions district_dead() and district_injured()


  output$plot1  <- plotly::renderPlotly({
    if (input$type == "Dead") {
      output$title1 <-
        shiny::renderText(paste("Dead people divided by year in", input$district))
      mean1Year = data.frame(district_dead(input$district))


      plotly::plot_ly(
        data = mean1Year ,
        x = ~ mean1Year$anno_incidente,
        y = ~ mean1Year$mean,
        name = "Dead",
        type = 'bar',
        marker = list(
          color = "#87cefa",
          line = list(color = "black", width = 0.5)
        )
      ) %>%


        plotly::layout(
          yaxis = list(title = "Mean of dead people"),
          xaxis = list(title = "Year"),
          margin = list(l = 100)
        )
    } else {
      output$title1 <-
        shiny::renderText(paste("Injured people divided by year in", input$district))
      mean3Year = data.frame(district_injured(input$district))


      plotly::plot_ly(
        data = mean3Year ,
        x = ~ mean3Year$anno_incidente,
        y = ~ mean3Year$mean,
        name = "Dead",
        type = 'bar',
        marker = list(
          color = "#87cefa",
          line = list(color = "black", width = 0.5)
        )
      ) %>%


        plotly::layout(
          yaxis = list(title = "Mean of injured people"),
          xaxis = list(title = "Year"),
          margin = list(l = 100)
        )
    }
  })

})
