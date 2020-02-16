<i> ID: 10e974e5 </i>

<h1 align="center">Road Accidents Analysis</h1>
<p> This application makes an analysis of the road accidents in the Lombardy region from 2010 to 2016. It is possible to calculate the mean for injured and dead people in a specific district or in a specific year. </p>
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

<p> The project uses dataset imported from OpenData of Comune di Milano (https://dati.lombardia.it/resource/kfsx-gizw.json).</p>

<h2> Shiny App </h2>
<p> To run the Shiny App us the function: </p>

```r
# Run Shiny App
roadaccidents()
```

<h2> Documentation </h2>
<p> It is possible to see the documentation of the developed functions using </p>
<li><code> ?getDataset</code></li>
<li><code> ?year_dead</code></li>
<li><code> ?year_injured</code></li>
<li><code> ?district_dead</code></li>
<li><code> ?district_injured</code></li>
<li><code> ?roadaccidents</code></li>


<h3> Author </h3>
<i> Antonella D'Amico </i>
