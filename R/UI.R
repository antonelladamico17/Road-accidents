library(shiny)
library(plotly)

# Define UI for Shiny App

shinyUI(fluidPage(
  titlePanel(title =  "Analysis of road accidents in Lombardy region"),
  sidebarLayout(
    sidebarPanel(
      sliderInput(
        "year",
        "Choose a year:",
        min = 2010,
        max = 2016,
        value = 2010,
        sep = ''
      ),
      selectInput(
        "district",
        "Choose a district from the dataset:",
        choices = data$provincia
      ),
      # radioButtons("type", "I want to calculate the mean for:",
      # choices = c("Dead", "Injured"), selected = "Dead", inline = TRUE)
    ),

    mainPanel(plotlyOutput ("plot"),)

  )
))
