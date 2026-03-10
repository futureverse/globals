options(globals.debug = (.Platform[["OS.type"]] == "windows"))

commaq <- globals:::commaq

exprs <- list()
truths <- list()
append_expr <- function(expr, substitute = TRUE, truth = character(0L)) {
  if (substitute) expr <- substitute(expr)
  truth <- sort(truth)
  exprs <<- c(exprs, list(expr))
  truths <<- c(truths, list(truth))
  invisible(length(exprs))
}

append_expr(42, truth = character(0L))

append_expr(a, truth = c("a"))

append_expr(a <- 42, truth = c("<-", if (getRversion() < "4.0.0") c("a")))


append_expr({
  a + b
}, truth = c("{", "+", "a", "b"))

append_expr({
  a <- 42
  a + b
}, truth = c("{", "<-", "+", "b", if (getRversion() < "4.0.0") "a"))

append_expr({
  c()
}, truth = c("{", "c"))

append_expr({
  c(1:3)
}, truth = c("{", "c", ":"))

append_expr({
  pi
}, truth = c("{", "pi"))

append_expr({
  base::pi
}, truth = c("{", "::"))

append_expr({
  base:::pi
}, truth = c("{", ":::"))

append_expr(a$b, truth = c("a", "$"))

append_expr(a$b(), truth = c("a", "$"))

append_expr(a$b(2), truth = c("a", "$"))

append_expr(a()$b, truth = c("a", "$"))

append_expr(a(2)$b, truth = c("a", "$"))

append_expr(a@b, truth = c("a", "@"))

append_expr(a@b(), truth = c("a", "@"))

append_expr(a@b(2), truth = c("a", "@"))

append_expr(a()@b, truth = c("a", "@"))

append_expr(a(2)@b, truth = c("a", "@"))

append_expr(a[1], truth = c("a", "["))

append_expr(a[NA], truth = c("a", "["))

append_expr(a[NA_character_], truth = c("a", "["))

append_expr(a[Inf], truth = c("a", "["))

append_expr(a[], truth = c("a", "["))

append_expr(a[1,], truth = c("a", "["))

append_expr(a[,1], truth = c("a", "["))

append_expr(a[1] <- 0, truth = c("a", "[<-"))

append_expr(a[b <- 1] <- 0, truth = c("a", "[<-", "<-", if (getRversion() < "4.0.0") c("b")))

append_expr({ a[b <- 1] <- 0 }, truth = c("{", "a", "[<-", "<-", if (getRversion() < "4.0.0") c("b")))

append_expr({ a$b <- 0 }, truth = c("{", "a", "$<-"))

append_expr({ a@b <- 0 }, truth = c("{", "a", "@<-"))

append_expr(names(a) <- "A", truth = c("a", "names<-"))

append_expr({ a[1] = 0 }, truth = c("{", "a", "[<-"))

append_expr({ a[b = 1] = 0 }, truth = c("{", "a", "[<-"))

append_expr({ a$b = 0 }, truth = c("{", "a", "$<-"))

append_expr({ names(a) = "A" }, truth = c("{", "a", "names<-"))

append_expr({ names(a)[1] = "A" }, truth = c("{", "names<-", "a", "[<-", "names"))

append_expr(x[is.na(x)] <- 0, truth = c("[<-", "is.na", "x"))

append_expr({ x[is.na(x)] = 0 }, truth = c("{", "[<-", "is.na", "x"))

append_expr(function(a) a, truth = character(0L))

append_expr(function(a) a + b, truth = c("+", "b"))

append_expr(function(a, b) a + b, truth = c("+"))

append_expr(function(a, b = 1) a + b, truth = c("+"))

append_expr({
  g <- function(a) a
  g(a)
}, truth = c("{", "<-", "a", if (getRversion() < "4.0.0") "g"))


append_expr({
  x <- 1
  y <- function(a) {
    b <- 3
    a + b + x
  }
  z <- y(2 * x)
}, truth = c("{", "<-", "+", "*", if (getRversion() < "4.0.0") c("b", "x", "y", "z")))

append_expr({
  y <- function(a) a + x
  x <- 1
  z <- y(2 * x)
}, truth = c("{", "<-", "x", "+", "*", if (getRversion() < "4.0.0") c("y", "z")))


append_expr({
  lapply(1:3, function (i) {
    G <- function(a,b,c) c(a, b, c)
    G(a, b, c)
  })
}, truth = c(":", "{", "<-", "a", "b", "c", "lapply", if (getRversion() < "4.0.0") "G"))


append_expr({
  base::lapply(1:3, function (i) {
    G <- function(a,b,c) c(a, b, c)
    G(a, b, c)
  })
}, truth = c("::", ":", "{", "<-", "a", "b", "c", if (getRversion() < "4.0.0") "G"))


append_expr(~ x, substitute = FALSE, truth = c("~", "x"))

append_expr(. ~ x, substitute = FALSE, truth = c("~", ".", "x"))

append_expr(y ~ x + 1, truth = c("~", "y", "+", "x"))

env <- new.env(parent = emptyenv())
append_expr(env, substitute = FALSE, truth = character(0L))

fcn <- function() a * x
append_expr(fcn, substitute = FALSE, truth = c("*", "a", "x"))

fcn <- function(a) a * x
append_expr(fcn, substitute = FALSE, truth = c("*", "x"))

fcn <- function(a, b = 1) a * x + b
append_expr(fcn, substitute = FALSE, truth = c("*", "x", "+"))

fcn <- function(...) NULL
append_expr(fcn, substitute = FALSE, truth = character(0L))

fcn <- function(...) list(...)
append_expr(fcn, substitute = FALSE, truth = c("list"))

fcn <- function() list(...)
append_expr(fcn, substitute = FALSE, truth = c("list", "..."))

fcn <- function(a, ...) base::list(a = a, ...)
append_expr(fcn, substitute = FALSE, truth = c("::"))

fcn <- function(a, ...) c(a = a, ...)
append_expr(fcn, substitute = FALSE, truth = c("c"))

expr <- expression(x)
append_expr(expr, substitute = FALSE, truth = c("x"))

expr <- expression(x + y)
append_expr(expr, substitute = FALSE, truth = c("+", "x", "y"))

# BUG: https://github.com/HenrikBengtsson/globals/issues/93
expr <- asS3(methods::getClass("S4")@prototype, complete = FALSE)
append_expr(expr, substitute = FALSE, truth = character(0L))

con <- rawConnection(raw())
append_expr(con, substitute = FALSE, truth = character(0L))
close(con)

expr <- quote(for (x in NULL) NULL)
append_expr(expr, substitute = FALSE, truth = c("for"))

expr <- quote(for (x in NULL) x)
append_expr(expr, substitute = FALSE, truth = c("for"))

expr <- quote(base::names(x)[1] <- 0)
append_expr(expr, substitute = FALSE, truth = c("::", "x", "[<-"))

expr <- alist(x = a)
append_expr(expr, substitute = FALSE, truth = c("a"))

expr <- function(x = a) NULL
append_expr(expr, substitute = FALSE, truth = c("a"))

expr <- function(...) list(..1, ..2)
append_expr(expr, substitute = FALSE, truth = c("list"))

expr <- function() list(..1, ..2)
append_expr(expr, substitute = FALSE, truth = c("list", "..1", "..2"))

for (kk in seq_along(exprs)) {
  message(sprintf("\n*** Expression #%d ***", kk))
  expr <- exprs[[kk]]
  truth <- truths[[kk]]
  print(expr)

  globals <- sort(globals::findGlobals(expr, method = "ordered"))
  message(sprintf("       findGlobals(..., type = 'ordered'): [n=%d] %s", length(globals), commaq(globals)))
  globals <- sort(globals::findGlobals(expr, method = "dfs"))
  msg <- sprintf("findGlobals(..., type = 'dfs'    ): [n=%d] %s", length(globals), commaq(globals))
  if (is.null(truth)) {
    message(sprintf("[SKIP] %s", msg))
  } else {
    missed <- setdiff(truth, globals)
    extra <- setdiff(globals, truth)
    if (length(extra) + length(missed) > 0) {
      info <- character(0L)
      if (length(extra) > 0) {
        info <- c(info, sprintf("extra: [n=%d] %s", length(extra), commaq(extra)))
      }
      if (length(missed) > 0) {
        info <- c(info, sprintf("missing: [n=%d] %s", length(missed), commaq(missed)))
      }
      info <- paste(info, collapse = "; ")
      message(sprintf("[FAIL] %s; which is unexpected (%s)", msg, info))
      stop("Unexpected results")
    } else {
      message(sprintf("[ OK ] %s", msg))
    }
  }
} ## for (kk ...)


## -------------------------------------------------------------------
## method = 'dfs' with debug = TRUE
## -------------------------------------------------------------------
message("*** method = 'dfs' with debug = TRUE ...")
oopts <- options(globals.debug = TRUE)

## Exercises: findGlobals_dfs_call (for loop, function def, assignment,
## replacement, $, ::, consolidation), findGlobals_dfs_environment,
## findGlobals_dfs_expression, findGlobals_dfs_function,
## findGlobals_dfs_pairlist, findGlobals_dfs_atomic
globals <- globals::findGlobals(quote(for (i in x) i + 1), method = "dfs")
stopifnot("for" %in% globals)

globals <- globals::findGlobals(quote(function(a, b = 1) a + x), method = "dfs")
stopifnot("x" %in% globals)

globals <- globals::findGlobals(quote(a <- a + 1), method = "dfs")
stopifnot("a" %in% globals)

globals <- globals::findGlobals(quote(names(a)[1] <- "A"), method = "dfs")
stopifnot("a" %in% globals)

globals <- globals::findGlobals(quote(base::sum), method = "dfs")
stopifnot("::" %in% globals)

globals <- globals::findGlobals(quote(x$y), method = "dfs")
stopifnot("x" %in% globals)

globals <- globals::findGlobals(expression(a + b), method = "dfs")
stopifnot("a" %in% globals)

env <- new.env(parent = emptyenv())
globals <- globals::findGlobals(env, method = "dfs")
stopifnot(identical(globals, character(0L)))

## Function object
fcn <- function(a) a + x_dfs
globals <- globals::findGlobals(fcn, method = "dfs")
stopifnot("x_dfs" %in% globals)

## Unary call (n == 1)
globals <- globals::findGlobals(quote(!x), method = "dfs")

## f()$g style (call whose function is a call)
globals <- globals::findGlobals(quote(f()$g), method = "dfs")
stopifnot("f" %in% globals)

options(oopts)

message("*** method = 'dfs' with debug = TRUE ... DONE")
