library(shiny)
library(roadaccidents)
library(plotly)


source(file.path("server", "data.R"))

# Shiny App Server

shinyServer(function(input, output, session) {
  # Render plot in main panel


  output$plot  <- renderPlotly({
    for (a in input$year) {
      if (a == input$year) {
        mean = year_dead(a)

        plot_ly(
          data = data,
          x = ~ data$provincia,
          y = ~ data$totale_morti,
          name = "Dead",
          type = 'scatter',
          mode = "markers",
          marker = list(color = "#c71585")
        ) %>%


          layout(
            title = sprintf(
              "Dead people divided by district in %d",
              data$anno_incidente
            ),
            yaxis = list(title = "Mean of dead people"),
            xaxis = list(title = "District"),
            margin = list(l = 100)
          )
      }
      break

    }
    # distdead <- input$district
    # yeardead <- input$year

    # for (a in input$year) {
    #   if (a == input$year) {
    #     #print(distdead)
    #   }
    # }


  })

})
