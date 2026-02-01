# Gets the length of an object without dispatching

Gets the length of an object without dispatching

## Usage

``` r
.length(x)
```

## Arguments

- x:

  Any R object.

## Value

A non-negative integer.

## Details

This function returns `length(unclass(x))`, but avoids calling
`unclass(x)` when the object isn't classed.

## See also

[`.subset()`](https://rdrr.io/r/base/base-internal.html) and
[`.subset2()`](https://rdrr.io/r/base/base-internal.html).
