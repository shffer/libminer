
<!-- README.md is generated from README.Rmd. Please edit that file -->

# libminer

<!-- badges: start -->

[![R-CMD-check](https://github.com/shffer/libminer/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/shffer/libminer/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

The goal of libminer is to provide an overview of your library setup. It
is a toy package creates as part of a workshop and not meant for serious
use!

## Installation

You can install the development version of libminer from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("shffer/libminer")
```

## Example

To get a count of installed packages in each of your libraries,
optionally with the total sizea, use `lib_summary()`.

``` r
library(libminer)
lib_summary()
#>                                                                           Library
#> 1                                              C:/Program Files/R/R-4.3.1/library
#> 2 C:/Users/Shane Fernandez/AppData/Local/Temp/RtmpA9VSSg/temp_libpath50fc11d31be3
#>   n_packages
#> 1        186
#> 2          1

# specify size = TRUE

lib_summary(size = TRUE)
#>                                                                           Library
#> 1                                              C:/Program Files/R/R-4.3.1/library
#> 2 C:/Users/Shane Fernandez/AppData/Local/Temp/RtmpA9VSSg/temp_libpath50fc11d31be3
#>   n_packages  lib_size
#> 1        186 299612973
#> 2          1     13298
```
