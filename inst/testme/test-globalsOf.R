library(globals)

message("*** globalsOf() ...")

message(" ** globalsOf(..., method = 'conservative'):")
expr <- exprs$A
globals_c <- globalsOf(expr, method = "conservative")
str(globals_c)
assert_identical_sets(names(globals_c), c("{", "<-", "c", "d", "+"))
globals_c <- cleanup(globals_c)
str(globals_c)
assert_identical_sets(names(globals_c), c("c", "d"))
where <- attr(globals_c, "where")
stopifnot(
  length(where) == length(globals_c),
  identical(where$c, globalenv()),
  identical(where$d, globalenv())
)

message(" ** globalsOf(..., method = 'liberal'):")
expr <- exprs$A
globals_l <- globalsOf(expr, method = "liberal")
str(globals_l)
assert_identical_sets(names(globals_l), c("{", "<-", "b", "c", "d", "+", "a", "e"))
globals_l <- cleanup(globals_l)
str(globals_l)
assert_identical_sets(names(globals_l), c("b", "c", "d", "a", "e"))
where <- attr(globals_l, "where")
stopifnot(
  length(where) == length(globals_l),
  identical(where$b, globalenv()),
  identical(where$c, globalenv()),
  identical(where$d, globalenv())
)

message(" ** globalsOf(..., method = 'ordered'):")
expr <- exprs$A
globals_i <- globalsOf(expr, method = "ordered")
str(globals_i)
assert_identical_sets(names(globals_i), c("{", "<-", "b", "c", "d", "+", "a", "e"))
globals_i <- cleanup(globals_i)
str(globals_i)
assert_identical_sets(names(globals_i), c("b", "c", "d", "a", "e"))
where <- attr(globals_i, "where")
stopifnot(
  length(where) == length(globals_i),
  identical(where$b, globalenv()),
  identical(where$c, globalenv()),
  identical(where$d, globalenv())
)

globals_i <- globalsOf(function(x) x <- x)
print(globals_i)
globals_i <- cleanup(globals_i)
str(globals_i)
assert_identical_sets(names(globals_i), character(0L))
where <- attr(globals_i, "where")
stopifnot(
  length(where) == length(globals_i),
  identical(where, setNames(list(), character(0L)))
)


globals_i <- globalsOf(function(x) x[1] <- 0)
print(globals_i)
globals_i <- cleanup(globals_i)
str(globals_i)
assert_identical_sets(names(globals_i), character(0L))
where <- attr(globals_i, "where")
stopifnot(
  length(where) == length(globals_i),
  identical(where, setNames(list(), character(0L)))
)

globals_i <- globalsOf(function(x) a <- x$a)
print(globals_i)
globals_i <- cleanup(globals_i)
str(globals_i)
assert_identical_sets(names(globals_i), character(0L))
where <- attr(globals_i, "where")
stopifnot(
  length(where) == length(globals_i),
  identical(where, setNames(list(), character(0L)))
)

globals_i <- globalsOf(function(...) args <- list(...))
print(globals_i)
globals_i <- cleanup(globals_i)
str(globals_i)
assert_identical_sets(names(globals_i), character(0L))
where <- attr(globals_i, "where")
stopifnot(
  length(where) == length(globals_i),
  identical(where, setNames(list(), character(0L)))
)


x <- 1
globals_i <- globalsOf({ function(x) x; x }, substitute = TRUE)
print(globals_i)
globals_i <- cleanup(globals_i)
str(globals_i)
assert_identical_sets(names(globals_i), "x")
where <- attr(globals_i, "where")
stopifnot(
  length(where) == length(globals_i)
)



message(" ** globalsOf() w/ globals in functions:")

a <- 1
bar <- function(x) x - a
foo <- function(x) bar(x)

for (method in c("ordered", "conservative", "liberal")) {
  globals <- globalsOf({ foo(3) }, substitute = TRUE, method = method,
                         recursive = FALSE, mustExist = FALSE)
  assert_identical_sets(names(globals), c("{", "foo"))
  stopifnot(!any("a" %in% names(globals)))
  globals <- cleanup(globals)
  str(globals)
  assert_identical_sets(names(globals), c("foo"))
  stopifnot(!any("a" %in% names(globals)))

  globals <- globalsOf({ foo(3) }, substitute = TRUE, method = "ordered",
                         recursive = TRUE, mustExist = FALSE)
  assert_identical_sets(names(globals), c("{", "foo", "bar", "-", "a"))
  globals <- cleanup(globals)
  str(globals)
  assert_identical_sets(names(globals), c("foo", "bar", "a"))

  globals <- globalsOf({ foo(3) }, substitute = TRUE,
                         recursive = TRUE, mustExist = FALSE)
  assert_identical_sets(names(globals), c("{", "foo", "bar", "-", "a"))
  globals <- cleanup(globals)
  str(globals)
  assert_identical_sets(names(globals), c("foo", "bar", "a"))
}


message(" ** globalsOf() w/ recursive functions:")

## "Easy"
f <- function() Recall()
globals <- globalsOf(f)
str(globals)

## Direct recursive call
f <- function() f()
globals <- globalsOf(f)
str(globals)

## Indirect recursive call
f <- function() g()
g <- function() f()
globals_f <- globalsOf(f)
str(globals_f)
globals_g <- globalsOf(g)
str(globals_g)
globals_f <- globals_f[order(names(globals_f))]
globals_g <- globals_g[order(names(globals_g))]
stopifnot(identical(globals_g, globals_f))


message("*** globalsOf() ... DONE")


message("*** Subsetting of Globals:")
expr <- exprs$A
globals_l <- globalsOf(expr, method = "liberal")
globals_s <- globals_l[-1]
stopifnot(length(globals_s) == length(globals_l) - 1L)
stopifnot(identical(class(globals_s), class(globals_l)))
where_l <- attr(globals_l, "where")
where_s <- attr(globals_s, "where")
stopifnot(length(where_s) == length(where_l) - 1L)
stopifnot(identical(where_s, where_l[-1]))


message("*** cleanup() & packagesOf():")
expr <- exprs$A
globals <- globalsOf(expr, method = "conservative")
str(globals)
assert_identical_sets(names(globals), c("{", "<-", "c", "d", "+"))

globals <- as.Globals(globals)
str(globals)
assert_identical_sets(names(globals), c("{", "<-", "c", "d", "+"))

globals <- as.Globals(unclass(globals))
str(globals)
assert_identical_sets(names(globals), c("{", "<-", "c", "d", "+"))

pkgs <- packagesOf(globals)
print(pkgs)
stopifnot(
  length(pkgs) == 1L,
  identical(pkgs, c("base"))
)

globals <- cleanup(globals)
str(globals)
assert_identical_sets(names(globals), c("c", "d"))

pkgs <- packagesOf(globals)
print(pkgs)
stopifnot(length(pkgs) == 0L)

globals <- globalsOf(quote(pi))
stopifnot(
  length(globals) == 1L,
  identical(names(globals), "pi")
)
pkgs <- packagesOf(globals)
print(pkgs)
stopifnot(
  length(pkgs) == 1L,
  identical(pkgs, c("base"))
)

message("*** globalsOf() and package functions:")
foo <- globals::Globals
expr <- exprs$C
globals <- globalsOf(expr, recursive = FALSE)
str(globals)
assert_identical_sets(names(globals), c("{", "foo", "list"))
where <- attr(globals, "where")
stopifnot(length(where) == length(globals))
if (!covr) stopifnot(
  identical(where$`{`, baseenv()),
  identical(where$foo, globalenv()),
  identical(where$list, baseenv())
)

globals <- cleanup(globals)
str(globals)
assert_identical_sets(names(globals), c("foo"))
pkgs <- packagesOf(globals)
stopifnot(pkgs == "globals")


message("*** globalsOf() and core-package functions:")
sample2 <- base::sample
sum2 <- base::sum
expr <- exprs$D
globals <- globalsOf(expr, recursive = FALSE)
str(globals)
assert_identical_sets(names(globals), c("{", "<-", "sample", "sample2", "sessionInfo", "sum", "sum2", "isNamespaceLoaded"))
where <- attr(globals, "where")
stopifnot(length(where) == length(globals))
if (!covr) stopifnot(
  identical(where$`<-`, baseenv()),
  identical(where$sample, baseenv()),
  identical(where$sample2, globalenv())
)

globals <- cleanup(globals, drop = "primitives")
str(globals)
assert_identical_sets(names(globals), c("sample", "sample2", "sum2", "sessionInfo", "isNamespaceLoaded"))

globals <- cleanup(globals, drop = "internals")
str(globals)
assert_identical_sets(names(globals), c("sample", "sample2", "sum2", "sessionInfo"))

globals <- cleanup(globals)
str(globals)
assert_identical_sets(names(globals), c("sample2", "sum2"))
where <- attr(globals, "where")
stopifnot(length(where) == length(globals))
if (!covr) stopifnot(identical(where$sample2, globalenv()))


message("*** globalsOf() - exceptions ...")

rm(list = "a")
res <- try({
  globals <- globalsOf({ x <- a }, substitute = TRUE, mustExist = TRUE)
}, silent = TRUE)
stopifnot(inherits(res, "try-error"))

rm(list = c("b", "c", "d", "e"), inherits = FALSE)
res <- try({
  globals <- globalsOf({ x <- a + b }, substitute = TRUE, mustExist = TRUE)
}, silent = TRUE)
stopifnot(inherits(res, "try-error"))

message("*** globalsOf() - exceptions ... DONE")


message("*** globalsOf() - locals option via env var ...")

## Test R option 'globals.globalsOf.locals'
a_opt <- 100
f_opt <- local({
  local_var <- 42
  function() local_var + a_opt
})

## Test with 'locals = TRUE'
globals_t <- globalsOf(quote(f_opt), locals = TRUE)
str(globals_t)
stopifnot("local_var" %in% names(globals_t))

## Test with 'locals = FALSE'
globals_f <- globalsOf(quote(f_opt), locals = FALSE)
str(globals_f)
stopifnot(!"local_var" %in% names(globals_f))

message("*** globalsOf() - locals option via env var ... DONE")


message("*** globalsOf() - unlist = FALSE ...")

a_unl <- 1
b_unl <- 2
expr <- quote({ a_unl + b_unl })
globals_u <- globalsOf(expr, unlist = FALSE, mustExist = FALSE)
str(globals_u)
stopifnot(length(globals_u) > 0L)

message("*** globalsOf() - unlist = FALSE ... DONE")


message("*** globalsOf() - debug mode ...")
a_dbg <- 1
oopts <- options(globals.debug = TRUE)
globals_dbg <- globalsOf(quote(a_dbg + 1), mustExist = FALSE)
stopifnot("a_dbg" %in% names(globals_dbg))

## debug with multiple methods
globals_dbg2 <- globalsOf(quote(a_dbg + 1),
                          method = c("ordered", "dfs"),
                          mustExist = FALSE)
stopifnot("a_dbg" %in% names(globals_dbg2))
options(oopts)
message("*** globalsOf() - debug mode ... DONE")


message("*** globalsOf() - recursive with nested closures ...")
outer_val <- 100
inner_helper <- function(x) x + outer_val
outer_helper <- function(y) inner_helper(y)

globals_rec <- globalsOf(quote(outer_helper(1)),
                         recursive = TRUE, mustExist = FALSE)
stopifnot("outer_helper" %in% names(globals_rec))
stopifnot("inner_helper" %in% names(globals_rec))
stopifnot("outer_val" %in% names(globals_rec))

## recursive with debug
oopts <- options(globals.debug = TRUE)
globals_rec_d <- globalsOf(quote(outer_helper(1)),
                           recursive = TRUE, mustExist = FALSE)
stopifnot("outer_helper" %in% names(globals_rec_d))
options(oopts)
message("*** globalsOf() - recursive with nested closures ... DONE")


message("*** globalsOf() - recursive, namespace closures ...")
## All closures found are in loaded namespaces,
## so recursive scan subset should be empty
globals_ns <- globalsOf(quote(base::sum(1:3)),
                        recursive = TRUE, mustExist = FALSE)
message("*** globalsOf() - recursive, namespace closures ... DONE")


message("*** globalsOf() - locals = FALSE with function ...")
outer_val2 <- 200
f_locals <- local({
  local_var2 <- 42
  function() local_var2 + outer_val2
})
## locals = TRUE includes local_var2
globals_lt <- globalsOf(quote(f_locals), locals = TRUE, mustExist = FALSE)
stopifnot("local_var2" %in% names(globals_lt))
## locals = FALSE excludes local_var2
globals_lf <- globalsOf(quote(f_locals), locals = FALSE, mustExist = FALSE)
stopifnot(!"local_var2" %in% names(globals_lf))
message("*** globalsOf() - locals = FALSE ... DONE")


rm(list = c("a_dbg", "outer_val", "inner_helper", "outer_helper",
            "outer_val2", "f_locals", "a_unl", "b_unl"))

