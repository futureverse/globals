library(globals)

message("*** findGlobals() ...")

message(" ** findGlobals(..., method = 'conservative'):")

expr <- exprs$A
globals_c <- findGlobals(expr, method = "conservative")
print(globals_c)
assert_identical_sets(globals_c, c("{", "<-", "c", "d", "+"))

message(" ** findGlobals(..., method = 'liberal'):")

expr <- exprs$A
globals_l <- findGlobals(expr, method = "liberal")
print(globals_l)
assert_identical_sets(globals_l, c("{", "<-", "b", "c", "d", "+", "a", "e"))

message(" ** findGlobals(..., method = 'ordered'):")

expr <- exprs$A
globals_i <- findGlobals(expr, method = "ordered")
print(globals_i)
assert_identical_sets(globals_i, c("{", "<-", "b", "c", "d", "+", "a", "e"))


message(" ** findGlobals(..., method = 'dfs'):")
expr <- exprs$A
print(expr)
globals_t <- findGlobals(expr, method = "dfs")
print(globals_t)
if (getRversion() < "4.0.0") globals_t <- setdiff(globals_t, c("x", "y", "z"))
assert_identical_sets(globals_t, c("{", "<-", "b", "c", "d", "+", "a", "e"))


fcn <- function() {
  a <- a + 1
  a
}
print(fcn)
globals_i <- globals::findGlobals(fcn)
print(globals_i)
assert_identical_sets(globals_i, c("{", "<-", "a", "+"))
globals_t <- findGlobals(fcn, method = "dfs")
print(globals_t)
assert_identical_sets(globals_t, c("{", "<-", "a", "+"))



fcn <- function() {
  a
  a <- a + 1
}
print(fcn)
globals_i <- findGlobals(fcn)
print(globals_i)
assert_identical_sets(globals_i, c("{", "a", "<-", "+"))
globals_t <- findGlobals(fcn, method = "dfs")
print(globals_t)
assert_identical_sets(globals_t, c("{", "a", "<-", "+"))


fcn <- function(x) x <- x
print(fcn)
globals_i <- findGlobals(fcn)
print(globals_i)
assert_identical_sets(globals_i, c("<-"))
globals_t <- findGlobals(fcn, method = "dfs")
print(globals_t)
assert_identical_sets(globals_t, c("<-"))


fcn <- function(x) x[1] <- 0
print(fcn)
globals_i <- findGlobals(fcn)
print(globals_i)
assert_identical_sets(globals_i, c("<-", "[", "[<-"))
globals_t <- findGlobals(fcn, method = "dfs")
print(globals_t)
assert_identical_sets(globals_t, c("[<-"))


fcn <- function(x) a <- x$a
print(fcn)
globals_i <- findGlobals(fcn)
print(globals_i)
assert_identical_sets(globals_i, c("<-", "$"))
globals_t <- findGlobals(fcn, method = "dfs")
print(globals_t)
if (getRversion() < "4.0.0") globals_t <- setdiff(globals_t, "a")
assert_identical_sets(globals_t, c("<-", "$"))


fcn <- function(...) args <- list(...)
print(fcn)
globals_i <- findGlobals(fcn)
print(globals_i)
assert_identical_sets(globals_i, c("<-", "list"))
globals_t <- findGlobals(fcn, method = "dfs")
print(globals_t)
if (getRversion() < "4.0.0") globals_t <- setdiff(globals_t, "args")
assert_identical_sets(globals_t, c("<-", "list"))

fcn <- function() args <- list(...)
print(fcn)
globals_i <- findGlobals(fcn)
print(globals_i)
assert_identical_sets(globals_i, c("<-", "list", "..."))
globals_t <- findGlobals(fcn, method = "dfs")
print(globals_t)
if (getRversion() < "4.0.0") globals_t <- setdiff(globals_t, "args")
assert_identical_sets(globals_t, c("<-", "list", "..."))


expr <- quote({ function(x) x; x })
print(expr)
globals_i <- findGlobals(expr)
print(globals_i)
assert_identical_sets(globals_i, c("{", "x"))
globals_t <- findGlobals(expr, method = "dfs")
print(globals_t)
assert_identical_sets(globals_t, c("{", "x"))


expr <- quote({ "x" <- 1; x })
globals_i <- findGlobals(expr)
print(globals_i)
assert_identical_sets(globals_i, c("{", "<-"))
globals_t <- findGlobals(expr, method = "dfs")
if (getRversion() < "4.0.0") globals_t <- setdiff(globals_t, "x")
print(globals_t)
assert_identical_sets(globals_t, c("{", "<-"))

x <- list()
globals <- findGlobals(x)
print(globals)
assert_identical_sets(globals, character(0L))
globals_t <- findGlobals(x, method = "dfs")
print(globals_t)
assert_identical_sets(globals_t, character(0L))


expr <- quote(list())
attr(expr, "abc") <- quote({ a })
attr(expr, "def") <- quote({ d })
globals <- findGlobals(expr)
print(globals)
assert_identical_sets(globals, c("list", "{", "a", "d"))
globals_t <- findGlobals(expr, method = "dfs")
print(globals_t)
assert_identical_sets(globals_t, c("list", "{", "a", "d"))


globals <- findGlobals(expr, attributes = "abc")
print(globals)
assert_identical_sets(globals, c("list", "{", "a"))
globals_t <- findGlobals(expr, method = "dfs")
print(globals_t)
assert_identical_sets(globals_t, c("list", "{", "a", "d"))


message(" ** findGlobals(..., tweak):")
tweak_another_expression <- function(expr) {
  quote({
    x <- B
    B <- 1
    y <- C
    z <- D
  })
}

expr <- exprs$A
print(expr)
globals_i <- findGlobals(expr, tweak = tweak_another_expression)
assert_identical_sets(globals_i, c("{", "<-", "B", "C", "D"))
globals_t <- findGlobals(expr, tweak = tweak_another_expression, method = "dfs")
print(globals_t)
if (getRversion() < "4.0.0") globals_t <- setdiff(globals_t, c("x", "y", "z"))
assert_identical_sets(globals_t, c("{", "<-", "B", "C", "D"))


message(" ** findGlobals(..., trace = TRUE):")

expr <- exprs$A
print(expr)
globals_i <- findGlobals(expr, trace = TRUE)
print(globals_i)
assert_identical_sets(globals_i, c("{", "<-", "b", "c", "d", "+", "a", "e"))
globals_t <- findGlobals(expr, method = "dfs")
print(globals_t)
if (getRversion() < "4.0.0") globals_t <- setdiff(globals_t, c("x", "y", "z"))
assert_identical_sets(globals_t, c("{", "<-", "b", "c", "d", "+", "a", "e"))

message(" ** findGlobals(a <- pkg::a):")
expr <- exprs$B
print(expr)
globals_i <- findGlobals(expr)
print(globals_i)
assert_identical_sets(globals_i, c("<-", "::"))
globals_t <- findGlobals(expr, method = "dfs")
print(globals_t)
if (getRversion() < "4.0.0") globals_t <- setdiff(globals_t, "a")
assert_identical_sets(globals_t, c("<-", "::"))

message(" ** findGlobals(a[1] <- 0) etc.:")

expr <- quote(a[1] <- 0)
print(expr)
globals_i <- findGlobals(expr)
print(globals_i)
false_globals <- "["
assert_identical_sets(setdiff(globals_i, false_globals), c("<-", "a", "[<-"))
globals_t <- findGlobals(expr, method = "dfs")
print(globals_t)
assert_identical_sets(globals_t, c("a", "[<-"))


expr <- quote({ a[1] = 0 })
print(expr)
globals_i <- findGlobals(expr)
print(globals_i)
false_globals <- "["
assert_identical_sets(setdiff(globals_i, false_globals), c("{", "=", "a", "[<-"))
globals_t <- findGlobals(expr, method = "dfs")
print(globals_t)
assert_identical_sets(globals_t, c("{", "a", "[<-"))


expr <- quote(a[b <- 1] <- 0)
print(expr)
globals_i <- findGlobals(expr)
print(globals_i)
false_globals <- "["
assert_identical_sets(setdiff(globals_i, false_globals), c("<-", "a", "[<-"))
globals_t <- findGlobals(expr, method = "dfs")
print(globals_t)
if (getRversion() < "4.0.0") globals_t <- setdiff(globals_t, "b")
assert_identical_sets(globals_t, c("<-", "a", "[<-"))

expr <- quote(a[b = 1] <- 0)
print(expr)
globals_i <- findGlobals(expr)
print(globals_i)
false_globals <- "["
assert_identical_sets(setdiff(globals_i, false_globals), c("<-", "a", "[<-"))
globals_t <- findGlobals(expr, method = "dfs")
print(globals_t)
if (getRversion() < "4.0.0") globals_t <- setdiff(globals_t, "b")
assert_identical_sets(globals_t, c("a", "[<-"))

expr <- quote({ a[b <- 1] = 0 })
print(expr)
globals_i <- findGlobals(expr)
print(globals_i)
false_globals <- "["
assert_identical_sets(setdiff(globals_i, false_globals), c("{", "=", "a", "<-", "[<-"))
globals_t <- findGlobals(expr, method = "dfs")
print(globals_t)
if (getRversion() < "4.0.0") globals_t <- setdiff(globals_t, "b")
assert_identical_sets(globals_t, c("{", "a", "<-", "[<-"))

expr <- quote(a$b <- 0)
print(expr)
globals_i <- findGlobals(expr)
print(globals_i)
false_globals <- "$"
assert_identical_sets(setdiff(globals_i, false_globals), c("<-", "a", "$<-"))
globals_t <- findGlobals(expr, method = "dfs")
print(globals_t)
assert_identical_sets(globals_t, c("a", "$<-"))

expr <- quote({ a$b = 0 })
print(expr)
globals_i <- findGlobals(expr)
print(globals_i)
false_globals <- "$"
assert_identical_sets(setdiff(globals_i, false_globals), c("{", "=", "a", "$<-"))
globals_t <- findGlobals(expr, method = "dfs")
print(globals_t)
assert_identical_sets(setdiff(globals_t, false_globals), c("{", "a", "$<-"))

expr <- quote(names(a) <- "A")
print(expr)
globals_i <- findGlobals(expr)
print(globals_i)
assert_identical_sets(globals_i, c("<-", "a", "names", "names<-"))
globals_t <- findGlobals(expr, method = "dfs")
print(globals_t)
assert_identical_sets(globals_t, c("a", "names<-"))

expr <- quote({ names(a) = "A" })
print(expr)
globals_i <- findGlobals(expr)
print(globals_i)
assert_identical_sets(globals_i, c("{", "=", "a", "names", "names<-"))
globals_t <- findGlobals(expr, method = "dfs")
print(globals_t)
assert_identical_sets(globals_t, c("{", "a", "names<-"))

## In order to handle the following case, we have to accept a few
## false positives (`[`, `[[`, `$`, `[<-`, `[[<-`)
expr <- quote(names(a)[1] <- "A")
print(expr)
globals_i <- findGlobals(expr)
print(globals_i)
false_globals <- c("[", "[<-")
assert_identical_sets(setdiff(globals_i, false_globals), c("<-", "a", "names", "names<-"))
globals_t <- findGlobals(expr, method = "dfs")
print(globals_t)
assert_identical_sets(globals_t, c("names<-", "a", "[<-", "names"))

expr <- quote({ names(a)[1] = "A" })
print(expr)
globals_i <- findGlobals(expr)
print(globals_i)
false_globals <- c("[", "[<-")
assert_identical_sets(setdiff(globals_i, false_globals), c("{", "=", "a", "names", "names<-"))
globals_t <- findGlobals(expr, method = "dfs")
print(globals_t)
assert_identical_sets(globals_t, c("{", "names<-", "a", "[<-", "names"))


expr <- expression(x)
print(expr)
globals_i <- findGlobals(expr)
print(globals_i)
assert_identical_sets(globals_i, c("x"))
globals_t <- findGlobals(expr, method = "dfs")
print(globals_t)
assert_identical_sets(globals_t, c("x"))

expr <- expression(x + y)
print(expr)
globals_i <- findGlobals(expr)
print(globals_i)
assert_identical_sets(globals_i, c("+", "x", "y"))
globals_t <- findGlobals(expr, method = "dfs")
print(globals_t)
assert_identical_sets(globals_t, c("+", "x", "y"))


# BUG: https://github.com/HenrikBengtsson/globals/issues/60
expr <- as.call(list(function(...) GLOBAL, quote(ARG)))
print(expr)
for (method in c("conservative", "liberal", "ordered", "dfs")) {
  message(sprintf("method=%s", sQuote(method)))
  globals_i <- findGlobals(expr, method = method)
  print(globals_i)
  assert_identical_sets(globals_i, c("GLOBAL", "ARG"))
}

expr <- quote({ a * b })
globals <- findGlobals(expr, trace = TRUE)
print(globals)
assert_identical_sets(globals, c("{", "*", "a", "b"))
globals_t <- findGlobals(expr, method = "dfs")
print(globals_t)
assert_identical_sets(globals_t, c("{", "*", "a", "b"))

# BUG: https://github.com/HenrikBengtsson/globals/issues/93
expr <- asS3(methods::getClass("S4")@prototype, complete = FALSE)
print(expr)
globals <- findGlobals(expr, trace = TRUE)
print(globals)
assert_identical_sets(globals, character(0L))
globals_t <- findGlobals(expr, method = "dfs")
print(globals_t)
assert_identical_sets(globals, character(0L))

message("*** findGlobals() - multiple 'method':s ...")

expr <- quote({ a + 1; a <- 1 })
globals <- findGlobals(expr, method = c("ordered", "dfs"))
print(globals)
assert_identical_sets(globals, c("{", "+", "a", "<-"))

expr <- quote({ for (x in NULL) NULL })
globals <- findGlobals(expr, method = c("ordered", "dfs"))
print(globals)
assert_identical_sets(globals, c("{", "for"))

expr <- quote({ for (x in NULL) x })
globals <- findGlobals(expr, method = c("ordered", "dfs"))
print(globals)
assert_identical_sets(globals, c("{", "for"))

message("*** findGlobals() - multiple 'method':s ... DONE")


message("*** findGlobals() - builtins for conservative/liberal ...")
## Passing a builtin (non-closure) function
globals_c <- findGlobals(`+`, method = "conservative")
stopifnot(identical(globals_c, character(0L)))
globals_l <- findGlobals(`+`, method = "liberal")
stopifnot(identical(globals_l, character(0L)))
message("*** findGlobals() - builtins for conservative/liberal ... DONE")


message("*** findGlobals() - multi-method with unlist = FALSE ...")
res <- tryCatch(
  findGlobals(quote(x), method = c("ordered", "liberal"), unlist = FALSE),
  error = identity
)
stopifnot(inherits(res, "simpleError"))
message("*** findGlobals() - multi-method with unlist = FALSE ... DONE")


message("*** findGlobals() - list input ...")
## List of expressions
exprs_list <- list(quote(a_li + b_li), quote(c_li * d_li))
globals_list <- findGlobals(exprs_list, method = "ordered")
stopifnot(all(c("a_li", "b_li", "c_li", "d_li") %in% globals_list))

## List of basic types (early exit path)
exprs_basic <- list(1L, 2.0, TRUE, "hello")
globals_basic <- findGlobals(exprs_basic, method = "ordered")
stopifnot(identical(globals_basic, character(0L)))

## List with dotdotdot references
exprs_dots <- list(quote(..1 + ..2), quote(x_li))
globals_dots <- findGlobals(exprs_dots, method = "ordered")
stopifnot("x_li" %in% globals_dots)
message("*** findGlobals() - list input ... DONE")


message("*** findGlobals() - debug path ...")
oopts <- options(globals.debug = TRUE)

## Single method with debug
globals_d1 <- findGlobals(quote(a_dbg + b_dbg), method = "ordered")
stopifnot("a_dbg" %in% globals_d1)

## Multiple methods with debug
globals_d2 <- findGlobals(quote({ a_dbg + 1; a_dbg <- 1 }), method = c("ordered", "dfs"))
stopifnot(length(globals_d2) > 0)

## List input with debug
globals_d3 <- findGlobals(list(quote(a_dbg + 1)), method = "ordered")
stopifnot("a_dbg" %in% globals_d3)

## Attributes search with debug
expr_attr <- quote(list())
attr(expr_attr, "my_attr") <- quote({ z_dbg })
globals_d4 <- findGlobals(expr_attr, method = "ordered")
stopifnot("z_dbg" %in% globals_d4)

options(oopts)
message("*** findGlobals() - debug path ... DONE")


message("*** findGlobals() - trace = TRUE with method = 'ordered' ...")
## Exercise trace paths in find_globals_ordered: formula, assignment, builtins
globals_tr1 <- findGlobals(quote(y ~ x + z), method = "ordered", trace = TRUE)
stopifnot(all(c("~", "y", "x", "z") %in% globals_tr1))

## Trace: builtin function (typeof != closure)
globals_tr2 <- findGlobals(`+`, method = "ordered", trace = TRUE)
stopifnot(identical(globals_tr2, character(0L)))

## Trace: expression object
globals_tr3 <- findGlobals(expression(a + b), method = "ordered", trace = TRUE)
stopifnot("a" %in% globals_tr3)

## Trace: inline function call (is.call() && is.function())
expr_inline <- as.call(list(function(...) GLOBAL_TR, quote(ARG_TR)))
globals_tr4 <- findGlobals(expr_inline, method = "ordered", trace = TRUE)
stopifnot("GLOBAL_TR" %in% globals_tr4)

## Trace: assignment LHS exploration (a[1] <- 0 pattern)
globals_tr5 <- findGlobals(quote(names(a_tr)[1] <- "A"), method = "ordered", trace = TRUE)
stopifnot("a_tr" %in% globals_tr5)

## Trace: self-assign (x <- x + 1) with hardcoded locals
globals_tr6 <- findGlobals(function() { x_tr <- x_tr + 1; x_tr }, method = "ordered", trace = TRUE)
stopifnot("x_tr" %in% globals_tr6)

## Trace: function that is not assignment or formula
globals_tr7 <- findGlobals(quote(foo_tr(a_tr)), method = "ordered", trace = TRUE)
stopifnot("foo_tr" %in% globals_tr7)
message("*** findGlobals() - trace = TRUE with method = 'ordered' ... DONE")


message("*** findGlobals() - trace = TRUE with conservative/liberal ...")
## Trace paths for conservative and liberal methods
globals_trc <- findGlobals(function(x) x + a_trc, method = "conservative", trace = TRUE)
stopifnot("a_trc" %in% globals_trc)
globals_trl <- findGlobals(function(x) x + a_trl, method = "liberal", trace = TRUE)
stopifnot("a_trl" %in% globals_trl)
message("*** findGlobals() - trace = TRUE with conservative/liberal ... DONE")


message("*** findGlobals() - tweak with multi-method ...")
my_tweak <- function(expr) quote(TWEAKED_VAR + 1)
globals_tw <- findGlobals(quote(original_var), method = c("ordered", "dfs"),
                          tweak = my_tweak)
stopifnot("TWEAKED_VAR" %in% globals_tw)

## tweak with debug
oopts <- options(globals.debug = TRUE)
globals_tw2 <- findGlobals(quote(original_var), method = c("ordered", "dfs"),
                           tweak = my_tweak)
stopifnot("TWEAKED_VAR" %in% globals_tw2)

## tweak with single method and debug
globals_tw3 <- findGlobals(quote(original_var), method = "ordered",
                           tweak = my_tweak)
stopifnot("TWEAKED_VAR" %in% globals_tw3)
options(oopts)
message("*** findGlobals() - tweak with multi-method ... DONE")


message("*** findGlobals() ... DONE")
