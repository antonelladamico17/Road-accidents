<i> ID: 10e974e5 </i>

<h1 align="center">Road Accidents Analysis</h1>
<p> This application makes an analysis of the road accidents in the Lombardy region from 2010 to 2016 </p>
<br>

<h2> Installation</h2>

```R
# first install the R package "devtools" if not installed
devtools::install_github('unimi-dse/10e974e5')
```
<br>

<h2> Usage </h2>

```r
# load the package
require(roadaccidents)
``` 


<h2> Dataset </h2>
<p> To import the dataset use the function </p>

```r
# load the dataframe 
getData()
```
<p> The project uses dataset imported from OpenData of Comune di Milano (https://dati.lombardia.it/resource/kfsx-gizw.json) as a JSON file. </p>

<h2> Shiny App </h2>
<p> To run the Shiny App us the function </p>

```r
# Run Shiny App
roadaccidents()
```

<h3> Functions </h3>
<li><code> year_dead</code></li>
<p> This function return the mean of dead people divided by district in a specific year</p>
<li><code> year_injured</code></li>
<p> This function return the mean of injured people divided by district in a specific year</p>
<li><code> district_dead</code></li>
<p> This function return the mean of dead people divided by year in a specific district</p>
<li><code> district_injured</code></li>
<p> This function return the mean of injured people divided by year in a specific district</p>

