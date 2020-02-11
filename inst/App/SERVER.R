library(dplyr)

# data <- jsonlite::fromJSON("https://www.dati.lombardia.it/resource/kfsx-gizw.json")
# data$anno_incidente <- as.numeric(data$anno_incidente)


# data <- getData()
# data <- jsonlite::fromJSON("https://www.dati.lombardia.it/resource/kfsx-gizw.json")
# data$anno_incidente <- as.numeric(data$anno_incidente)

# Render plot in main panel


#Shiny App Server

shiny::shinyServer(function(input, output, session){

      output$plot  <- plotly::renderPlotly({
        if(input$type == "Dead"){
        meanYear = data.frame(year_dead(input$year))


        plotly::plot_ly(
          data = meanYear ,
          x = ~ meanYear$provincia,
          y = ~ meanYear$mean,
          name = "Dead",
          type = 'bar',
          marker = list(color = "green",
                        line = list(color = "black", width = 3))
        ) %>%


          plotly::layout(
            title = sprintf(
              "Dead people divided by district in"),
            yaxis = list(title = "Mean of dead people"),
            xaxis = list(title = "District"),
            margin = list(l = 100)
          )
        } else {
          mean2Year = data.frame(year_injured(input$year))


          plotly::plot_ly(
            data = mean2Year ,
            x = ~ mean2Year$provincia,
            y = ~ mean2Year$mean,
            name = "Dead",
            type = 'bar',
            marker = list(color = "blue",
                          line = list(color = "black", width = 3))
          ) %>%


            plotly::layout(
              title = sprintf(
                "Injured people divided by district in"),
              yaxis = list(title = "Mean of injured people"),
              xaxis = list(title = "District"),
              margin = list(l = 100)
            )
}
      })



      output$plot1  <- plotly::renderPlotly({
        if(input$type == "Dead"){
          mean1Year = data.frame(district_dead(input$district))


          plotly::plot_ly(
            data = mean1Year ,
            x = ~ mean1Year$anno_incidente,
            y = ~ mean1Year$mean,
            name = "Dead",
            type = 'bar',
            marker = list(color = "green",
                          line = list(color = "black", width = 3))
          ) %>%


            plotly::layout(
              title = sprintf(
                "Dead people divided by year in"),
              yaxis = list(title = "Mean of dead people"),
              xaxis = list(title = "Year"),
              margin = list(l = 100)
            )
        } else {
          mean3Year = data.frame(district_injured(input$district))


          plotly::plot_ly(
            data = mean3Year ,
            x = ~ mean3Year$anno_incidente,
            y = ~ mean3Year$mean,
            name = "Dead",
            type = 'bar',
            marker = list(color = "blue",
                          line = list(color = "black", width = 3))
          ) %>%


            plotly::layout(
              title = sprintf(
                "Injured people divided by year in"),
              yaxis = list(title = "Mean of injured people"),
              xaxis = list(title = "Year"),
              margin = list(l = 100)
            )
        }
      })

})
