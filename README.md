<!-- README.md is generated from README.Rmd. Please edit that file -->

Queens Gambit palettes
======================

Recently, I was blown away by the cinematography and color palettes of
the Netflix show “The Queens Gambit”, so I made a color palette
generated similar to the wesanderson package. Full credit to Karthik Ram
and his [Wes Anderson color palette
package](https://github.com/karthik/wesanderson) for the code and
inspiration.

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

![](figure/openings-1.png)

### Adopted

![adopted](./figure/adopted.jpg)

``` r
qg_palette("adopted")
```

![](figure/adopted-1.png)

### Moscow

![moscow](./figure/moscow.jpg)

``` r
qg_palette("moscow")
```

![](figure/moscow-1.png)

### Endgame

![endgame](./figure/endgame.jpg)

``` r
qg_palette("endgame")
```

![](figure/endgame-1.png)

``` r
qg_palette("endgame", 21, type = "continuous")
```

![](figure/volcano-1.png)

### Practice

![practice](./figure/practice.jpg)

``` r
qg_palette("practice")
```

![](figure/practice-1.png)

### Room

![room](./figure/room.jpg)

``` r
qg_palette("room")
```

![](figure/room-1.png)

### Squash

![squash](./figure/squash.jpg)

``` r
qg_palette("squash")
```

![](figure/squash-1.png)

### US open

![US open](./figure/USopen.jpg)

``` r
qg_palette("USopen")
```

![](figure/usopen-1.png)

``` r
library("ggplot2")
ggplot(mtcars, aes(factor(cyl), fill=factor(vs))) +  geom_bar() +
  scale_fill_manual(values = qg_palette("USopen")[1:2]) + theme_bw()
```

![](figure/ggplot1-1.png)
