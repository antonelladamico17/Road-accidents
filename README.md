_ID: 10e974e5_

# Road Accidents Analysis
This package allows users to make an analysis of the _road accidents in the Lombardy region from 2010 to 2016._ 
It is possible to calculate the mean for injured and dead people in a specific district or in a specific year.


## Installation

```R
# first install the R package "devtools" if not installed
devtools::install_github('unimi-dse/10e974e5')
```

## Usage

```R
# load the package
require(roadaccidents)
``` 

## Dataset

The project provides a dataset which is imported from the Regione Lombardia website (https://dati.lombardia.it/resource/kfsx-gizw.json). \
The dataset is compsed by 490 observations and 8 variables:
- _anno incidente_: year of the accidents
- _codice istat provincia_: identification code for the district
- _provincia_: district
- _codice istat comune_: identification code for the city
- _comune_: city
- _numero incidenti_: number of accidents
- _totale morti_: total number of dead people
- _totale feriti_: total number of injured people


## Documentation
It is possible to see the documentation of the developed functions using: 
```R 
?getDataset()
```
```R 
?year_dead()
```
```R
?year_injured()
```
```R 
?district_dead()
```
```R 
?district_injured()
```
```R 
?roadaccidents()
```

## Shiny App
To run the Shiny App use the function:

```r
# Run Shiny App
roadaccidents()
```

## Technologies:
- R language
- Shiny App

#### Author
_Antonella D'Amico_ 
