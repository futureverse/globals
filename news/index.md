# Changelog

## Version (development version)

- …

## Version 0.19.1

CRAN release: 2026-03-13

### Bug Fixes

- Globals objects could not be sub-assigned by index - only by name,
  e.g. with `x <- as.Globals(list(a = 1))`, `x[[1]] <- 2` would give an
  error.

## Version 0.19.0

CRAN release: 2026-02-02

### Performance

- [`findGlobals()`](https://globals.futureverse.org/reference/globalsOf.md)
  is now much faster when `expr` contains a list of classed lists,
  e.g. a list of data frames.

### Bug Fixes

- `findGlobals(function(x = a) NULL, method = "dfs")` failed to identify
  `a` as global variable.

- `findGlobals(function(...) ..1, method = "dfs")` incorrectly
  identified `..1` as a global variable.

## Version 0.18.0

CRAN release: 2025-05-08

### New Features

- Add `findGlobals(..., method = "dfs")`, which finds globals in R
  expressions by walking its abstract syntax tree (AST) using
  depth-first search. This new approach does a better job in emulating
  how the R engine identifies global variables. For example, the new
  `"dfs"` method picks up `x` in `local({ function(x) x; x })` as a
  global variable, which the `"ordered"` method fails to do.
  Analogously,
  [`globalsOf()`](https://globals.futureverse.org/reference/globalsOf.md)
  gained support for `method = "dfs"`

- Now
  [`findGlobals()`](https://globals.futureverse.org/reference/globalsOf.md)
  supports `expression` objects, e.g. `findGlobals(expression(x + y))`.

- It is now possible to specify multiple `method` search algorithms for
  [`findGlobals()`](https://globals.futureverse.org/reference/globalsOf.md)
  and
  [`globalsOf()`](https://globals.futureverse.org/reference/globalsOf.md),
  which then will combine the results from all of them,
  e.g. `findGlobals(expr, method = c("dfs", "ordered"))`.

### Bug Fixes

- [`walkAST()`](https://globals.futureverse.org/reference/walkAST.md)
  did not recognize objects of type `externalptr`, leading to an error
  on `Cannot walk expression. Unknown object type 'externalptr'`.

## Version 0.17.0

CRAN release: 2025-04-16

### New Features

- [`walkAST()`](https://globals.futureverse.org/reference/walkAST.md)
  now also walks the body of closures (“functions”).

### Bug Fixes

- [`walkAST()`](https://globals.futureverse.org/reference/walkAST.md)
  did not recognize objects of type `object`, leading to an error on
  `Cannot walk expression. Unknown object type 'object'`.

- [`findGlobals()`](https://globals.futureverse.org/reference/globalsOf.md)
  would produce
  `Error in e[[4]] : subscript out of expressions of format` for
  expressions of type `` LHS INFIX_OP `$<-`(name, value) ``,
  e.g. `` x %>% `$<-`("a", 42) ``. This is due to a bug in the
  **codetools** package, which
  [`findGlobals()`](https://globals.futureverse.org/reference/globalsOf.md)
  now works around internally.

## Version 0.16.3

CRAN release: 2024-03-07

### Bug Fixes

- [`globalsByName()`](https://globals.futureverse.org/reference/globalsByName.md),
  and therefore also
  [`globalsOf()`](https://globals.futureverse.org/reference/globalsOf.md),
  did not support special arguments `..1`, `..2`, etc.

- `cleanup(globals, drop)` on a `Globals` object with non-existing
  globals and where `drop` did *not* specify `"missing"` would throw an
  `Error in exists(name, envir = env) : use of NULL environment is defunct`.
  Now the non-existing (“missing”) globals are preserved.

## Version 0.16.2

CRAN release: 2022-11-21

### Documentation

- Drop duplicated arguments from
  [`help("walkAST")`](https://globals.futureverse.org/reference/walkAST.md).

## Version 0.16.1

CRAN release: 2022-08-28

### Bug Fixes

- [`packagesOf()`](https://globals.futureverse.org/reference/packagesOf.Globals.md)
  for `Globals` failed to return the package of the globals if the
  global doesn’t have a closure,
  e.g. [`base::pi`](https://rdrr.io/r/base/Constants.html) and
  [`data.table::.N`](https://rdrr.io/pkg/data.table/man/special-symbols.html).

## Version 0.16.0

CRAN release: 2022-08-05

### New Features

- Add `[[<-` and `[<-` for `Globals`, to complement `$<-`.

### Reproducibility

- All functions modifying a `Globals` object guarantee that the `where`
  and the `class` attributes are always the last two attributes and in
  that order.

### Bug Fixes

- [`c()`](https://rdrr.io/r/base/c.html) for `Globals` would lose the
  `where` environment for any functions appended.

## Version 0.15.1

CRAN release: 2022-06-24

### Bug Fixes

- [`cleanup()`](https://globals.futureverse.org/reference/cleanup.Globals.md)
  assumed it was safe to call `env$.packageName` on each scanned
  environment, but that might not be true. A classed environment could
  be such that `$()` gives an error, rather than returning something.

## Version 0.15.0

CRAN release: 2022-05-09

### New Features

- [`globalsOf()`](https://globals.futureverse.org/reference/globalsOf.md)
  gained argument `locals`, which controls whether globals that exist in
  “local” environments of a function should be considered or not,
  e.g. in `f <- local({ a <- 1; function() a })`, should `a` be
  considered a global of `f()` or not. For backward compatibility
  reasons, the default is `locals = TRUE`, but this might become
  `locals = FALSE` in a later release.

- Any `globals.*` options specific to this package can now be set via
  environment variables `R_GLOBALS_*` when the package is loaded. For
  example, `R_GLOBALS_DEBUG=true` sets option `globals.debug = TRUE`.

### Bug Fixes

- `as.Globals(list(a = NULL))` and `c(Globals(), list(a = NULL))` would
  include the calling environment instead of an empty environment as
  part of the `where` attribute.

## Version 0.14.0

CRAN release: 2020-11-22

### New Features

- Now `findGlobals(function(x) x <- x)` identifies `x` as a global
  variable.

- Now `findGlobals(function(x) x[1] <- 0)` identifies `x` as a global
  variable. Same for other variants like `x[[1]] <- 0` and `x$a <- 0`.

- Now `findGlobals(function(z) x <- z$x)` identifies `x` as a global
  variable.

- Now `findGlobals(quote({ f <- function(x) x; x }))` identifies `x` as
  a global variable. Previously, the `x` of the function would hide the
  global `x`.

## Version 0.13.1

CRAN release: 2020-10-11

### Bug Fixes

- [`globalsOf()`](https://globals.futureverse.org/reference/globalsOf.md)
  could produce “Error in vapply(where, FUN = envname, FUN.VALUE =
  NA_character\_, USE.NAMES = FALSE) : values must be length 1, but
  FUN(X\[\[2\]\]) result is length 10”. This would happen if for
  instance argument `envir` has attributes set.

- [`findGlobals()`](https://globals.futureverse.org/reference/globalsOf.md)
  works around a bug in `stats:::[.formula` of R (\< 4.1.0) that
  revealed itself when scanning formulas with NULL components.

- [`findGlobals()`](https://globals.futureverse.org/reference/globalsOf.md)
  would not pass down argument `dotdotdot` when recursively parsing
  assignments.

- [`findGlobals()`](https://globals.futureverse.org/reference/globalsOf.md)
  could return `...` as a global also when used in formulas. Now it
  respects argument `dotdotdot = "ignore"` and parses formulas
  accordingly, otherwise formulas will be parsed using
  `dotdotdot = "return"`.

## Version 0.13.0

CRAN release: 2020-09-17

### Significant Changes

- `findGlobals(expr)` now also scans any attributes of `expr` for
  globals,
  e.g. [`purrr::partial()`](https://purrr.tidyverse.org/reference/partial.html)
  puts the original function in attribute `body`. Argument `attributes`
  controls which attributes, if any, should be scanned. Default is to
  scan all attributes.

- [`findGlobals()`](https://globals.futureverse.org/reference/globalsOf.md),
  [`globalsOf()`](https://globals.futureverse.org/reference/globalsOf.md),
  and
  [`globalsByName()`](https://globals.futureverse.org/reference/globalsByName.md)
  now recognize and return values for `..1`, `..2`, etc. like they do
  for `...`.

- [`cleanup()`](https://globals.futureverse.org/reference/cleanup.Globals.md)
  now also drops exported and non-exported `NativeSymbolInfo` objects.

### New Features

- [`cleanup()`](https://globals.futureverse.org/reference/cleanup.Globals.md)
  gained support for dropping `NativeSymbolInfo` objects.

### Bug Fixes

- [`findGlobals()`](https://globals.futureverse.org/reference/globalsOf.md)
  did not pass down argument `method` in recursive calls.

- `findGlobals(expr)` would fail to identify globals in anonymous
  function calls,
  e.g. `expr <- as.call(list(function(...) NOT_FOUND, quote(FOUND)))`.

- Calls like `findGlobals(~ NULL)` with NULLs on the right-hand side
  could throw “Error in if (length(ans) == 0L \|\|
  as.character(ans\[\[1L\]\])\[1L\] ==”~“) { : missing value where
  TRUE/FALSE needed”. Solved by working around what looks like a bug in
  the **stats** package causing subsetting on formulas with NULLs to
  fail.

- `cleanup(..., drop = c(..., "base-packages"))` for `Globals` would
  drop base R objects with names not exported by the corresponding base
  R package. Similarly, `drop = c(..., "primitives")` would drop
  primitive R objects with names not exported by any base R package.

- [`findGlobals()`](https://globals.futureverse.org/reference/globalsOf.md),
  [`globalsOf()`](https://globals.futureverse.org/reference/globalsOf.md),
  and
  [`globalsByName()`](https://globals.futureverse.org/reference/globalsByName.md)
  did not handle `..1`, `..2`, etc.

- [`findGlobals()`](https://globals.futureverse.org/reference/globalsOf.md)
  and
  [`globalsOf()`](https://globals.futureverse.org/reference/globalsOf.md)
  produces warnings on ‘: … may be used in an incorrect context’ when
  formulas had `...`, `..1`, `..2`, etc.

- `findGlobals(function() NULL, substitute = TRUE, trace = TRUE)` would
  throw “Error in environment(w\$enterLocal) : object ‘w’ not found”.

## Version 0.12.5

CRAN release: 2019-12-07

### Bug Fixes

- `findGlobals(function() { a; a <- a + 1 })` would fail to identify `a`
  as a global variable whereas it was properly identified with
  `{ a <- a + 1; a }`.

## Version 0.12.4

CRAN release: 2018-10-11

### Bug Fixes

- [`globalsOf()`](https://globals.futureverse.org/reference/globalsOf.md)
  could produce “Error in vapply(where, FUN = envname, FUN.VALUE =
  NA_character\_, USE.NAMES = FALSE) : values must be length 1, but
  FUN(X\[\[…\]\]) result is length …”. This was because the internal
  `envname(env)` did not always handle when
  `class(env) != "environment"`.

## Version 0.12.3

CRAN release: 2018-09-17

### New Features

- [`findGlobals()`](https://globals.futureverse.org/reference/globalsOf.md),
  [`globalsOf()`](https://globals.futureverse.org/reference/globalsOf.md),
  and
  [`packagesOf()`](https://globals.futureverse.org/reference/packagesOf.Globals.md)
  no longer return elements sorted by name.

### Bug Fixes

- globals::[`findGlobals()`](https://globals.futureverse.org/reference/globalsOf.md)
  would not identify `a` as a global in expressions of type `a[1] = ...`
  and `names(a) = ...` although it did for `a[1] <- ...` and
  `names(a) <- ...`.

## Version 0.12.2

CRAN release: 2018-08-25

### Performance

- [`cleanup()`](https://globals.futureverse.org/reference/cleanup.Globals.md)
  for `Globals` should now be much faster. Previously, it could be very
  slow the first time it was called in a fresh R session, especially if
  the user had a large number of packages installed and/or the package
  libraries were on slow drives.

### Documentation

- Added help for
  [`globals::findGlobals()`](https://globals.futureverse.org/reference/globalsOf.md).

### Bug Fixes

- `globals::findGlobals(x)`, where `x` is a list, iterated over `x`
  incorrectly assuming no method dispatching on `x` would take place.
  For instance, if `x` contained an `fst::fst_table` object, then “Error
  in .subset2(x, i, exact = exact) : subscript out of bounds” would be
  produced.

- globals::[`findGlobals()`](https://globals.futureverse.org/reference/globalsOf.md)
  could produce a “Warning in is.na(x): is.na() applied to non-(list or
  vector) of type ‘NULL’” in R (\< 3.5.0).

## Version 0.12.1

CRAN release: 2018-06-25

### Performance

- globals::[`findGlobals()`](https://globals.futureverse.org/reference/globalsOf.md)
  is now significantly faster for elements that are long lists with many
  elements of basic data types. This is because elements of such basic
  data types cannot contain globals and can therefore be skipped early
  in the search for globals.

## Version 0.12.0

CRAN release: 2018-06-12

### New Features

- Now
  globals::[`findGlobals()`](https://globals.futureverse.org/reference/globalsOf.md)
  identifies `a` as a global also when it is part of LHS expressions of
  type `a[1] <- ...` and `names(a) <- ...`.

### Bug Fixes

- globals::[`findGlobals()`](https://globals.futureverse.org/reference/globalsOf.md)
  incorrectly identified `a` as a global in expression of type
  `a <- pkg::a`.

- If `...` was passed to `globalsByName(names)`, an error would be
  produced unless it was the last entry in `names`.

## Version 0.11.0

CRAN release: 2018-01-10

### New Features

- Now
  [`findGlobals()`](https://globals.futureverse.org/reference/globalsOf.md)
  identifies `x` as a global variable in `x <- x + 1` and likewise for
  `x + 1 -> x`. Note that ditto using `<<-` and `->>` was already
  identifying `x` as a global.

### Bug Fixes

- `findGlobals(..., trace = TRUE)` now outputs only to standard error.
  Previously, some of the output went to standard output.

## Version 0.10.3

CRAN release: 2017-10-13

### Bug Fixes

- `globalsOf(..., recursive = TRUE)` would result in “Error in
  match.fun(FUN) : node stack overflow” if one of the globals identified
  was a function that called itself recursively (either directly or
  indirectly).

## Version 0.10.2

CRAN release: 2017-08-08

### Bug Fixes

- [`walkAST()`](https://globals.futureverse.org/reference/walkAST.md)
  could produce error “Cannot walk expression. Unknown object type ‘…’”
  for objects of type `environment`.

## Version 0.10.1

CRAN release: 2017-07-02

### Bug Fixes

- [`walkAST()`](https://globals.futureverse.org/reference/walkAST.md)
  could produce error “Cannot walk expression. Unknown object type ‘…’”
  for objects of type `list`, `expression` and `S4`.

## Version 0.10.0

CRAN release: 2017-04-17

### New Features

- Globals that are part of a formula are now identified.

- `findGlobals(..., trace = TRUE)` will now show low-level parse
  information as the abstract syntax tree (AST) is walked.

SOFTWARE QUALITY:

- Enabled more internal sanity checks.

### Bug Fixes

- [`walkAST()`](https://globals.futureverse.org/reference/walkAST.md)
  could produce error “Cannot walk expression. Unknown object type
  ‘nnn’” for expressions of type `builtin`, `closure` and `special`.

## Version 0.9.0

CRAN release: 2017-03-10

### New Features

- Added option `globals.debug`, which when TRUE enables debugging
  output.

### Bug Fixes

- `globalsOf(..., recursive = TRUE)` would in some cases scan an
  incorrect subset of already identified globals.

- `globalsOf(..., recursive = TRUE)` failed to skip objects part of
  package namespaces that where defined via a
  [`local()`](https://rdrr.io/r/base/eval.html) statement.

## Version 0.8.0

CRAN release: 2017-01-16

### New Features

- [`globalsOf()`](https://globals.futureverse.org/reference/globalsOf.md)
  identifies also globals in locally defined functions. This can be
  disabled with argument `recursive = FALSE`.

- [`findGlobals()`](https://globals.futureverse.org/reference/globalsOf.md)
  now takes both closures (functions) and expressions.

## Version 0.7.2

CRAN release: 2017-01-09

### Bug Fixes

- `c(x, list())` where `x` is a `Globals` object would give an error
  reporting that the list does not have named elements.

## Version 0.7.1

CRAN release: 2016-10-14

### New Features

- [`Globals()`](https://globals.futureverse.org/reference/Globals.md)
  and
  [`as.Globals()`](https://globals.futureverse.org/reference/Globals.md)
  now accepts an empty list as input as well.

### Bug Fixes

- `walkAST(quote( function(x=NULL) 0 ))` would give a sanity check error
  due to the NULL argument. Thank you GitHub user ‘billy34’ for
  reporting on this.

## Version 0.7.0

CRAN release: 2016-09-09

### New Features

- Added
  [`walkAST()`](https://globals.futureverse.org/reference/walkAST.md),
  which can be used to tweak expressions.

- Added
  [`globalsByName()`](https://globals.futureverse.org/reference/globalsByName.md)
  for locating and retrieving a set of known global variables.

- Added [`c()`](https://rdrr.io/r/base/c.html), `$<-()`,
  [`names()`](https://globals.futureverse.org/reference/Globals.md),
  [`unique()`](https://rdrr.io/r/base/unique.html) for `Globals`
  objects.

- Improved
  [`as.Globals()`](https://globals.futureverse.org/reference/Globals.md)
  for lists.

## Version 0.6.1

CRAN release: 2016-02-03

### New Features

- Now the error message of `globalsOf(..., mustExist = TRUE)` when it
  fails to locate a global also gives information on the expression that
  is problematic.

### Bug Fixes

- [`cleanup()`](https://globals.futureverse.org/reference/cleanup.Globals.md)
  for `Globals` did not cleanup functions in core package environments
  named `package:<name>`.

## Version 0.6.0

CRAN release: 2015-12-12

### New Features

- [`findGlobals()`](https://globals.futureverse.org/reference/globalsOf.md)
  is updated to handle the case where a local variable is overwriting a
  global one with the same name, e.g. `{ a <- b; b <- 1 }`. Now `b` is
  correctly identified as a global object. Previously it would have been
  missed. For backward compatibility, the previous behavior can be
  obtained using argument `method = "conservative"`.

## Version 0.5.0

CRAN release: 2015-10-14

### New Features

- [`globalsOf()`](https://globals.futureverse.org/reference/globalsOf.md)
  now returns attribute `where` specifying where each global object is
  located.

### Bug Fixes

- [`cleanup()`](https://globals.futureverse.org/reference/cleanup.Globals.md)
  now only drops objects that are *located* in one of the “base”
  packages; previously it would also drop copies of such objects,
  e.g. `FUN <- base::sample`.

## Version 0.4.1

CRAN release: 2015-10-06

### Bug Fixes

- [`globalsOf()`](https://globals.futureverse.org/reference/globalsOf.md)
  failed to return global variables with value NULL. They were
  identified but silently dropped.

## Version 0.4.0

CRAN release: 2015-09-18

### New Features

- [`findGlobals()`](https://globals.futureverse.org/reference/globalsOf.md)
  and
  [`globalsOf()`](https://globals.futureverse.org/reference/globalsOf.md)
  gained argument `dotdotdot`.

## Version 0.3.1

CRAN release: 2015-06-11

- More test coverage.

## Version 0.3.0

### New Features

- Renamed `getGlobals()` to
  [`globalsOf()`](https://globals.futureverse.org/reference/globalsOf.md).

## Version 0.2.3

### New Features

- Added `[()` for `Globals`.

- [`findGlobals()`](https://globals.futureverse.org/reference/globalsOf.md)
  and `getGlobals()` gained argument `substitute`.

- Added `cleanup(..., method = "internals")`.

## Version 0.2.2

### New Features

- Added `Globals` class with methods
  [`cleanup()`](https://globals.futureverse.org/reference/cleanup.Globals.md)
  and
  [`packagesOf()`](https://globals.futureverse.org/reference/packagesOf.Globals.md).

- Added
  [`as.Globals()`](https://globals.futureverse.org/reference/Globals.md)
  to coerce lists to `Globals` objects.

## Version 0.2.1

### New Features

- `getGlobals()` gained argument `mustExist` for controlling whether to
  give an error when the corresponding object for an identified global
  cannot be found or to silently drop the missing global.

- [`findGlobals()`](https://globals.futureverse.org/reference/globalsOf.md)
  and `getGlobals()` gained argument `method` for controlling whether a
  `"conservative"` or a `"liberal"` algorithm for identifying true
  globals should be used.

## Version 0.2.0

- Moved “globals” functions from an in-house package to this package.

## Version 0.1.0

- Created.
