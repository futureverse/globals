# Get all global objects of an expression

Get all global objects of an expression

## Usage

``` r
findGlobals(
  expr,
  envir = parent.frame(),
  ...,
  attributes = TRUE,
  tweak = NULL,
  dotdotdot = c("warning", "error", "return", "ignore"),
  method = c("ordered", "conservative", "liberal", "dfs"),
  substitute = FALSE,
  unlist = TRUE,
  trace = FALSE
)

globalsOf(
  expr,
  envir = parent.frame(),
  ...,
  method = c("ordered", "conservative", "liberal", "dfs"),
  tweak = NULL,
  locals = NA,
  substitute = FALSE,
  mustExist = TRUE,
  unlist = TRUE,
  recursive = TRUE,
  skip = NULL
)
```

## Arguments

- expr:

  An R expression.

- envir:

  The environment from where to search for globals.

- attributes:

  If TRUE (default), attributes of `expr` are also searched. If FALSE,
  they are not. If a character vector, then attributes with matching
  names are searched. Note, the attributes of the attributes' elements
  are not searched, that is, attributes are not searched recursively.
  Also, attributes are searched with `dotdotdot = "ignore"`.

- tweak:

  An optional function that takes an expression and returns a tweaked
  expression.

- dotdotdot:

  TBD.

- method:

  A character string specifying what type of search algorithm to use.

- substitute:

  If TRUE, the expression is
  [`substitute()`](https://rdrr.io/r/base/substitute.html):ed, otherwise
  not.

- unlist:

  If TRUE, a list of unique objects is returned. If FALSE, a list of
  `length(expr)` sublists.

- trace:

  TBD.

- locals:

  Should globals part of any "local" environment of a function be
  included or not?

- mustExist:

  If TRUE, an error is thrown if the object of the identified global
  cannot be located. Otherwise, the global is not returned.

- recursive:

  If TRUE, found globals are searched for additional globals. For
  example, a closure (function) that exists outside a package namespace,
  may contain additional globals. Similarly, a formula may depend on
  globals.

- skip:

  (internal) A list of globals not to be searched for additional
  globals. Ignored unless `recursive` is TRUE.

- ...:

  Not used.

## Value

`findGlobals()` returns a character vector.

`globalsOf()` returns a
[Globals](https://globals.futureverse.org/reference/Globals.md) object.

## Details

There are currently three strategies for identifying global objects.

The `method = "ordered"` search method identifies globals such that a
global variable preceding a local variable with the same name is not
dropped (which the `"conservative"` method would).

The `method = "conservative"` search method tries to keep the number of
false positives to a minimum, i.e. the identified objects are most
likely true global objects. At the same time, there is a risk that some
true globals are not identified (see example). This search method
returns the exact same result as the
[`findGlobals()`](https://rdrr.io/pkg/codetools/man/findGlobals.html)
function of the codetools package.

The `method = "liberal"` search method tries to keep the true-positive
ratio as high as possible, i.e. the true globals are most likely among
the identified ones. At the same time, there is a risk that some false
positives are also identified.

The `method = "dfs"` search method identifies globals in the abstract
syntax tree (AST) using a depth-first search, which better emulates how
the R engine identifies global variables.

With `recursive = TRUE`, globals part of locally defined functions will
also be found, otherwise not.

## See also

Internally, the codetools package is utilized for code inspections.

## Examples

``` r
b <- 2
expr <- substitute({ a <- b; b <- 1 })

## Will _not_ identify 'b' (because it's also a local)
globalsC <- globalsOf(expr, method = "conservative")
#> Error: bad assignment: ‘2 <- 1’
print(globalsC)
#> Error: object 'globalsC' not found

## Will identify 'b'
globalsL <- globalsOf(expr, method = "liberal")
#> Error: bad assignment: ‘2 <- 1’
print(globalsL)
#> Error: object 'globalsL' not found
```
