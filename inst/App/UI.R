# Define UI for Shiny App

shiny::shinyUI(fluidPage(

  titlePanel(h1("Analysis of road accidents in the Lombardy Region", align = "center")),
  br(),
  br(),
  sidebarLayout(

    sidebarPanel(

      # Dropdown the menu for selecting the year
      selectInput("year", "Choose a year:",
                  choices = c(2010:2016)
      ),

      # Dropdown the menu for selecting the district
      selectInput("district", "Choose a district:",
                  choices = c("BG", "BS", "CO", "CR", "LC",  "LO", "MB", "MI", "MN", "PV", "SO", "VA"), selected = ("MI")
      ),

      # Buttons for selecting the type of mean to calculate
      radioButtons("type", "I want to calculate the mean for:",
                   choices = c("Dead", "Injured"), inline = TRUE),
    ),

    mainPanel(

      br(),
      h4(shiny::textOutput("titleFirstPlot"), align = "center"),
      br(),
      plotly::plotlyOutput("firstPlot"),
      br(),
      br(),
      h4(shiny::textOutput("titleSecondPlot"), align = "center"),
      br(),
      plotly::plotlyOutput ("secondPlot"))

    )
  )
)
