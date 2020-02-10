### Load library
library(jsonlite)
library(ggplot2)
library(shiny)
library(dplyr)

### Dataframe to make the analysis
getData <- function(){
  data <- jsonlite::fromJSON("https://www.dati.lombardia.it/resource/kfsx-gizw.json")
  data$anno_incidente <- as.numeric(data$anno_incidente)
  data$numero_incidenti <- as.numeric(data$numero_incidenti)
  data$totale_morti <- as.numeric(data$totale_morti)
  data$totale_feriti <- as.numeric(data$totale_feriti)
  return(data)
}


##### Trasformation of chr into num ######

