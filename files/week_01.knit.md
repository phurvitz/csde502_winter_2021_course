---
title: "Week 01"
author: "[Phil Hurvitz](mailto:phurvitz@uw.edu)"
date: '2021-01-28 01:23'
header-includes: #allows you to add in your own Latex packages
- \usepackage{float} #use the 'float' package
- \floatplacement{figure}{H} #make every figure with caption = h
output: 
    bookdown::html_document2:
        number_sections: true
        self_contained: true
        code_folding: hide
        toc: true
        toc_float:
            collapsed: true
            smooth_scroll: false
    pdf_document:
        number_sections: true
        toc: true
        fig_cap: yes
        keep_tex: yes
urlcolor: blue        
---

<!--these following settings control width and also make a DIV tag for black outlines for figures-->
<style type="text/css">
.main-container {
  max-width: 2400px !important;
  margin-left: auto;
  margin-right: auto;
}
</style>

<style>
.outline {
   background-color: #000000;
   padding:1px;
   display: inline-block;
}
</style>



```r
# key setups
library(sqldf) # to use sql syntax with data frames
library(knitr) # knitr for kable tables
library(kableExtra) # pretty tables
library(sf) # simple features (GIS)
library(leaflet) # nice maps
library(tools) # md5sum

# captions
library(captioner)
table_nums <- captioner(prefix = "Table")
figure_nums <- captioner(prefix = "Figure")

# for having DIV tags
knitr::knit_hooks$set(class = function(before, options, envir) {
  if(before){
    sprintf("<div class = '%s'>", options$class)
  }else{
    "</div>"
  }
})

knitr::opts_chunk$set(warning = FALSE, message = FALSE)
```

<!-- for a wide presentation -->
<style type="text/css">
.main-container {
  max-width: 2400px !important;
  margin-left: auto;
  margin-right: auto;
}
</style>

<!-- a DIV for black outline, good for figures-->
<style>
.outline {
   background-color: #000000;
   padding:1px;
   display: inline-block;
}
</style>

# Introduction

<!--This is a newline:

\  

(a backslash with 2 spaces)
-->

# Methods

## Data

## Analysis

# Results

## A table

See Table  1

_Table  1: My caption_


```r
irishead <- head(iris)
kable(irishead, format = "html") %>% 
  kable_styling(bootstrap_options = 
                  c("striped", "hover", "condensed", "responsive"), 
                full_width = F,
                position = "left")
```

<table class="table table-striped table-hover table-condensed table-responsive" style="width: auto !important; ">
 <thead>
  <tr>
   <th style="text-align:right;"> Sepal.Length </th>
   <th style="text-align:right;"> Sepal.Width </th>
   <th style="text-align:right;"> Petal.Length </th>
   <th style="text-align:right;"> Petal.Width </th>
   <th style="text-align:left;"> Species </th>
  </tr>
 </thead>
<tbody>
  <tr>
   <td style="text-align:right;"> 5.1 </td>
   <td style="text-align:right;"> 3.5 </td>
   <td style="text-align:right;"> 1.4 </td>
   <td style="text-align:right;"> 0.2 </td>
   <td style="text-align:left;"> setosa </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 4.9 </td>
   <td style="text-align:right;"> 3.0 </td>
   <td style="text-align:right;"> 1.4 </td>
   <td style="text-align:right;"> 0.2 </td>
   <td style="text-align:left;"> setosa </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 4.7 </td>
   <td style="text-align:right;"> 3.2 </td>
   <td style="text-align:right;"> 1.3 </td>
   <td style="text-align:right;"> 0.2 </td>
   <td style="text-align:left;"> setosa </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 4.6 </td>
   <td style="text-align:right;"> 3.1 </td>
   <td style="text-align:right;"> 1.5 </td>
   <td style="text-align:right;"> 0.2 </td>
   <td style="text-align:left;"> setosa </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 5.0 </td>
   <td style="text-align:right;"> 3.6 </td>
   <td style="text-align:right;"> 1.4 </td>
   <td style="text-align:right;"> 0.2 </td>
   <td style="text-align:left;"> setosa </td>
  </tr>
  <tr>
   <td style="text-align:right;"> 5.4 </td>
   <td style="text-align:right;"> 3.9 </td>
   <td style="text-align:right;"> 1.7 </td>
   <td style="text-align:right;"> 0.4 </td>
   <td style="text-align:left;"> setosa </td>
  </tr>
</tbody>
</table>

## A leaflet map

See _Figure  1_ 


```r
# the Space Needle
snxy <- data.frame(name = "Space Needle", x = -122.3493, y = 47.6205)
space_needle <- st_as_sf(snxy, coords = c("x", "y"), crs = 4326)

# a leaflet
m <- leaflet() %>% 
    addTiles() %>% 
    addCircleMarkers(data = space_needle)
m
```

```{=html}
<div id="htmlwidget-c56636cb40dd6c7792d3" style="width:672px;height:480px;" class="leaflet html-widget"></div>
<script type="application/json" data-for="htmlwidget-c56636cb40dd6c7792d3">{"x":{"options":{"crs":{"crsClass":"L.CRS.EPSG3857","code":null,"proj4def":null,"projectedBounds":null,"options":{}}},"calls":[{"method":"addTiles","args":["//{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",null,null,{"minZoom":0,"maxZoom":18,"tileSize":256,"subdomains":"abc","errorTileUrl":"","tms":false,"noWrap":false,"zoomOffset":0,"zoomReverse":false,"opacity":1,"zIndex":1,"detectRetina":false,"attribution":"&copy; <a href=\"http://openstreetmap.org\">OpenStreetMap<\/a> contributors, <a href=\"http://creativecommons.org/licenses/by-sa/2.0/\">CC-BY-SA<\/a>"}]},{"method":"addCircleMarkers","args":[47.6205,-122.3493,10,null,null,{"interactive":true,"className":"","stroke":true,"color":"#03F","weight":5,"opacity":0.5,"fill":true,"fillColor":"#03F","fillOpacity":0.2},null,null,null,null,null,{"interactive":false,"permanent":false,"direction":"auto","opacity":1,"offset":[0,0],"textsize":"10px","textOnly":false,"className":"","sticky":true},null]}],"limits":{"lat":[47.6205,47.6205],"lng":[-122.3493,-122.3493]}},"evals":[],"jsHooks":[]}</script>
```
\    
_Figure  1: A simple leaflet map with the Space Needle as a markerpoint_

## A figure with black outlines
An image is shown below (Figure  2).

<div class = "outline">
![](http://staff.washington.edu/phurvitz/csdelogo-110x110.png)
</div>
\      
_Figure  2: CSDE Logo_

# Discussion

# Conclusions

# Source code
## This document

```r
cat(readLines("week_01.Rmd"), sep = '\n')
```

````
---
title: "Week 01"
author: "[Phil Hurvitz](mailto:phurvitz@uw.edu)"
date: '`r format(Sys.time(), "%Y-%m-%d %H:%M")`'
header-includes: #allows you to add in your own Latex packages
- \usepackage{float} #use the 'float' package
- \floatplacement{figure}{H} #make every figure with caption = h
output: 
    bookdown::html_document2:
        number_sections: true
        self_contained: true
        code_folding: hide
        toc: true
        toc_float:
            collapsed: true
            smooth_scroll: false
    pdf_document:
        number_sections: true
        toc: true
        fig_cap: yes
        keep_tex: yes
urlcolor: blue        
---

<!--these following settings control width and also make a DIV tag for black outlines for figures-->
<style type="text/css">
.main-container {
  max-width: 2400px !important;
  margin-left: auto;
  margin-right: auto;
}
</style>

<style>
.outline {
   background-color: #000000;
   padding:1px;
   display: inline-block;
}
</style>

```{r setup, message=FALSE}
# key setups
library(sqldf) # to use sql syntax with data frames
library(knitr) # knitr for kable tables
library(kableExtra) # pretty tables
library(sf) # simple features (GIS)
library(leaflet) # nice maps
library(tools) # md5sum

# captions
library(captioner)
table_nums <- captioner(prefix = "Table")
figure_nums <- captioner(prefix = "Figure")

# for having DIV tags
knitr::knit_hooks$set(class = function(before, options, envir) {
  if(before){
    sprintf("<div class = '%s'>", options$class)
  }else{
    "</div>"
  }
})

knitr::opts_chunk$set(warning = FALSE, message = FALSE)
```

<!-- for a wide presentation -->
<style type="text/css">
.main-container {
  max-width: 2400px !important;
  margin-left: auto;
  margin-right: auto;
}
</style>

<!-- a DIV for black outline, good for figures-->
<style>
.outline {
   background-color: #000000;
   padding:1px;
   display: inline-block;
}
</style>

# Introduction

<!--This is a newline:

\  

(a backslash with 2 spaces)
-->

# Methods

## Data

## Analysis

# Results

## A table

See `r table_nums(name = "tcap0", display = "cite")`

_`r table_nums(name = "tcap0", caption = "My caption")`_

```{r}
irishead <- head(iris)
kable(irishead, format = "html") %>% 
  kable_styling(bootstrap_options = 
                  c("striped", "hover", "condensed", "responsive"), 
                full_width = F,
                position = "left")
``` 

## A leaflet map

See _`r figure_nums(name = "spaceneedle", display = "cite")`_ 

```{r}
# the Space Needle
snxy <- data.frame(name = "Space Needle", x = -122.3493, y = 47.6205)
space_needle <- st_as_sf(snxy, coords = c("x", "y"), crs = 4326)

# a leaflet
m <- leaflet() %>% 
    addTiles() %>% 
    addCircleMarkers(data = space_needle)
m
```
\    
_`r figure_nums(name = "spaceneedle", caption = "A simple leaflet map with the Space Needle as a markerpoint")`_

## A figure with black outlines
An image is shown below (`r figure_nums(name = "csdelogo", display = "cite")`).

<div class = "outline">
![](http://staff.washington.edu/phurvitz/csdelogo-110x110.png)
</div>
\      
_`r figure_nums(name = "csdelogo", caption = "CSDE Logo")`_

# Discussion

# Conclusions

# Source code
## This document
```{r comment=''}
cat(readLines("week_01.Rmd"), sep = '\n')
```
````
