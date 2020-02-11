# Define UI for Shiny App

shiny::shinyUI(fluidPage(
  titlePanel(h1("Analysis of road accidents in the Lombardy Region", align = "center")),
  br(),
  br(),
  sidebarLayout(
    sidebarPanel(
      selectInput(
        "year",
        "Choose a year:",
        choices = c(2010:2016)
      ),
      selectInput(
        "district",
        "Choose a district:",
        choices = data$provincia,
        selected = (data$provincia == "")
      ),
      radioButtons("type", "I want to calculate the mean for:",
      choices = c("Dead", "Injured"), inline = TRUE),
      shiny::textOutput("prova")
    ),

    mainPanel(
      br(),
      h4(shiny::textOutput("title"), align = "center"),
      br(),
      plotly::plotlyOutput ("plot"),
      br(),
      br(),
      br(),
      h4(shiny::textOutput("title1"), align = "center"),
      br(),
      plotly::plotlyOutput ("plot1"))

  )
))
