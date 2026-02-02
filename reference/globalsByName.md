# Locates and retrieves a set of global variables by their names

Locates and retrieves a set of global variables by their names

## Usage

``` r
globalsByName(names, envir = parent.frame(), mustExist = TRUE, ...)
```

## Arguments

- names:

  A character vector of global variable names.

- envir:

  The environment from where to search for globals.

- mustExist:

  If TRUE, an error is thrown if the object of the identified global
  cannot be located. Otherwise, the global is not returned.

- ...:

  Not used.

## Value

A [Globals](https://globals.futureverse.org/reference/Globals.md) object
of named elements and an attribute `where` with named elements. Both
sets have names according to `names`.

## Special "argument" globals

If `names` specifies `"..."`, `"..1"`, `"..2"`, ..., then they are
interpreted as arguments `...`, `..1`, `..2`, ..., respectively. If
specified, then the corresponding elements in the results are lists of
class `DotDotDotList` comprising the value of the latter. If the special
argument does not exist, then the value is `NA`, and the corresponding
`where` attribute is `NULL`.

## Examples

``` r
f <- function(x = 42, ...) {
  globalsByName("x")
}

globals <- f()
str(globals)
#> List of 1
#>  $ x: num 42
#>  - attr(*, "where")=List of 1
#>   ..$ x:<environment: 0x55e5f46aa7d0> 
#>  - attr(*, "class")= chr [1:2] "Globals" "list"

globals <- f(3.14)
str(globals)
#> List of 1
#>  $ x: num 3.14
#>  - attr(*, "where")=List of 1
#>   ..$ x:<environment: 0x55e5f33d7ce8> 
#>  - attr(*, "class")= chr [1:2] "Globals" "list"


g <- function(x = 42, ...) {
  globalsByName("...")
}

globals <- g()
str(globals)
#> List of 1
#>  $ ...: list()
#>   ..- attr(*, "class")= chr [1:2] "DotDotDotList" "list"
#>  - attr(*, "where")=List of 1
#>   ..$ ...:<environment: 0x55e5f5d645f0> 
#>  - attr(*, "class")= chr [1:2] "Globals" "list"

globals <- g(3.14)
str(globals)
#> List of 1
#>  $ ...: list()
#>   ..- attr(*, "class")= chr [1:2] "DotDotDotList" "list"
#>  - attr(*, "where")=List of 1
#>   ..$ ...:<environment: 0x55e5f62d4170> 
#>  - attr(*, "class")= chr [1:2] "Globals" "list"

globals <- g(3.14, 1L, b = 2L, c = 3L)
str(globals)
#> List of 1
#>  $ ...:List of 3
#>   ..$  : int 1
#>   ..$ b: int 2
#>   ..$ c: int 3
#>   ..- attr(*, "class")= chr [1:2] "DotDotDotList" "list"
#>  - attr(*, "where")=List of 1
#>   ..$ ...:<environment: 0x55e5f645b538> 
#>  - attr(*, "class")= chr [1:2] "Globals" "list"


h <- function(x = 42, ...) {
  globalsByName("..2")
}

globals <- h(x = 3.14, a = 1, b = 2)
str(globals)
#> List of 1
#>  $ ..2:List of 1
#>   ..$ : num 2
#>   ..- attr(*, "class")= chr [1:2] "DotDotDotList" "list"
#>  - attr(*, "where")=List of 1
#>   ..$ ..2:<environment: 0x55e5f67b6200> 
#>  - attr(*, "class")= chr [1:2] "Globals" "list"

globals <- g(3.14)
str(globals)
#> List of 1
#>  $ ...: list()
#>   ..- attr(*, "class")= chr [1:2] "DotDotDotList" "list"
#>  - attr(*, "where")=List of 1
#>   ..$ ...:<environment: 0x55e5f69e2f58> 
#>  - attr(*, "class")= chr [1:2] "Globals" "list"

globals <- g(3.14, 1L, b = 2L, c = 3L)
str(globals)
#> List of 1
#>  $ ...:List of 3
#>   ..$  : int 1
#>   ..$ b: int 2
#>   ..$ c: int 3
#>   ..- attr(*, "class")= chr [1:2] "DotDotDotList" "list"
#>  - attr(*, "where")=List of 1
#>   ..$ ...:<environment: 0x55e5f6cdad40> 
#>  - attr(*, "class")= chr [1:2] "Globals" "list"
```
