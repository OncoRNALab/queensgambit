<!-- README.md is generated from README.Rmd. Please edit that file -->

Queens Gambit palettes
======================

I often use the color palettes from the wesanderson R package. Recently,
I was blown away by the cinematography and color palettes of the Netflix
show “The Queens Gambit”, so I made a color palette generated similar to
the wesanderson package.

Installation
------------

Development version

``` r
devtools::install_github("rmvpaeme/queensgambit")
```

Usage
-----

``` r
library("queensgambit")

# See all palettes
names(qg_palettes)
#> [1] "openings" "adopted"  "moscow"   "endgame"  "practice" "room"     "squash"  
#> [8] "USopen"
```

Palettes
--------

### Openings

![openings](./figure/openings.jpg)

``` r
qg_palette("openings")
```

![](figure/bottlerocket1-1.png)

### Adopted

![adopted](./figure/adopted.jpg)

``` r
qg_palette("adopted")
```

![](figure/rushmore-1.png)

### Moscow

![moscow](./figure/moscow.jpg)

``` r
qg_palette("moscow")
```

![](figure/royal-1.png)

``` r
library("ggplot2")
ggplot(mtcars, aes(factor(cyl), fill=factor(vs))) +  geom_bar() +
  scale_fill_manual(values = qg_palette("moscow")[2:3]) + theme_bw()
```

![](figure/ggplot1-1.png)

### Endgame

![endgame](./figure/endgame.jpg)

``` r
qg_palette("endgame")
```

![](figure/lifeaquatic-1.png)

``` r
pal <- qg_palette("endgame", 21, type = "continuous")
image(volcano, col = pal)
```

![](figure/volcano-1.png)

``` r
pal <- qg_palette("room", 100, type = "continuous")
# heatmap is a local dataset
ggplot(heatmap, aes(x = X2, y = X1, fill = value)) +
  geom_tile() + 
  scale_fill_gradientn(colours = pal) + 
  scale_x_discrete(expand = c(0, 0)) +
  scale_y_discrete(expand = c(0, 0)) + 
  coord_equal() 
```

![](figure/zissou_heatmap-1.png)

### Practice

![practice](./figure/practice.jpg)

``` r
qg_palette("practice")
```

![](figure/darjeeling-1.png)

### Room

![room](./figure/room.jpg)

``` r
qg_palette("room")
```

![](figure/chevalier-1.png)

### Squash

![squash](./figure/squash.jpg)

``` r
qg_palette("squash")
```

![](figure/fantasticfox-1.png)

### US open

![US open](./figure/USopen.jpg)

``` r
qg_palette("USopen")
```

![](figure/moonrise-1.png)
