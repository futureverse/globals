# Walk the Abstract Syntax Tree (AST) of an R Expression

Walk the Abstract Syntax Tree (AST) of an R Expression

## Usage

``` r
walkAST(
  expr,
  atomic = NULL,
  name = NULL,
  call = NULL,
  pairlist = NULL,
  substitute = FALSE
)
```

## Arguments

- expr:

  R [expression](https://rdrr.io/r/base/expression.html).

- atomic, name, call, pairlist:

  single-argument function that takes an atomic, name, call and pairlist
  expression, respectively. Have to return a valid R expression.

- substitute:

  If TRUE, `expr` is
  [`substitute()`](https://rdrr.io/r/base/substitute.html):ed.

## Value

R [expression](https://rdrr.io/r/base/expression.html).
