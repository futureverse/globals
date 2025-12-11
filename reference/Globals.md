# A representation of a set of globals

A representation of a set of globals

## Usage

``` r
Globals(object, ...)
```

## Arguments

- object:

  A named list.

- ...:

  Not used.

## Value

An object of class `Globals`, which is a *named* list of the value of
the globals, where the element names are the names of the globals.
Attribute `where` is a named list of the same length and with the same
names.

## See also

The
[`globalsOf()`](https://globals.futureverse.org/reference/globalsOf.md)
function identifies globals from an R expression and returns a Globals
object.
