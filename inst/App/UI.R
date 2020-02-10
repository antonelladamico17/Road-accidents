
# Define UI for Shiny App

shiny::shinyUI(fluidPage(
  titlePanel(title =  "Analysis of road accidents in Lombardy region"),
  sidebarLayout(
    sidebarPanel(
      selectInput(
        "year",
        "Choose a year:",
        choices = c(2010:2016)
      ),
      selectInput(
        "district",
        "Choose a district from the dataset:",
        choices = data$provincia
      ),
      # radioButtons("type", "I want to calculate the mean for:",
      # choices = c("Dead", "Injured"), selected = "Dead", inline = TRUE)
    ),

    mainPanel(
      plotly::plotlyOutput ("plot"),
      plotly::plotlyOutput ("plot1"))

  )
))
