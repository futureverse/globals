findGlobals_dfs <- globals:::findGlobals_dfs
findGlobalsDFS <- globals:::findGlobalsDFS
find_globals_ordered <- globals:::find_globals_ordered
mdebug_push <- globals:::mdebug_push
mdebugf_push <- globals:::mdebugf_push
mdebug_pop <- globals:::mdebug_pop
mdebugf_pop <- globals:::mdebugf_pop
mdebugf <- globals:::mdebugf
mprint <- globals:::mprint
mstr <- globals:::mstr
where <- globals:::where
findGlobals <- globals::findGlobals
globalsOf <- globals::globalsOf
as.Globals <- globals::as.Globals
packagesOf <- globals::packagesOf

oopts <- options(globals.debug = TRUE)


## -------------------------------------------------------------------
## findGlobalsDFS() / findGlobals_dfs() with debug = TRUE
## -------------------------------------------------------------------
message("*** findGlobals_dfs(..., debug = TRUE) ...")

g <- function(y) y + 1

dfs_exprs <- list(
  symbol           = list(expr = quote(a),                                                   truth = "a"),
  atomic           = list(expr = 42,                                                         truth = character(0L)),
  atomic_srcref    = list(expr = structure(1, class = "srcref"),                             truth = character(0L)),
  binary_op        = list(expr = quote(a + b),                                               truth = c("+", "a", "b")),
  dollar           = list(expr = quote(a$b),                                                 truth = c("$", "a")),
  at               = list(expr = quote(a@b),                                                 truth = c("@", "a")),
  colon2           = list(expr = quote(base::sum),                                           truth = "::"),
  colon3           = list(expr = quote(base:::sum),                                          truth = ":::"),
  bracket_assign   = list(expr = quote(a[1] <- 0),                                           truth = c("[<-", "a")),
  names_assign     = list(expr = quote(names(a)[1] <- "A"),                                  truth = c("[<-", "a", "names", "names<-")),
  pkg_names_assign = list(expr = quote(base::names(x)[1] <- 0),                              truth = c("::", "[<-", "x")),
  for_loop         = list(expr = quote(for (i in x) i + 1),                                  truth = c("+", "for", "x")),
  function_def     = list(expr = quote(function(a, b = 1) a + x),                            truth = c("+", "x")),
  unary            = list(expr = quote(!x),                                                  truth = c("!", "x")),
  call_of_call     = list(expr = quote(f()$g),                                               truth = c("$", "f")),
  closure_in_call  = list(expr = as.call(list(g, 1)),                                        truth = "+"),
  environment      = list(expr = new.env(parent = emptyenv()),                               truth = character(0L)),
  expression_many  = list(expr = expression(a + b),                                          truth = c("+", "a", "b")),
  expression_basic = list(expr = expression(1),                                              truth = character(0L)),
  function_object  = list(expr = (function(a) a + x),                                        truth = c("+", "x")),
  s4_object        = list(expr = asS3(methods::getClass("S4")@prototype, complete = FALSE),  truth = character(0L)),
  list_of_exprs    = list(expr = list(quote(x), quote(y)),                                   truth = c("x", "y"))
)

for (kk in seq_along(dfs_exprs)) {
  name <- names(dfs_exprs)[kk]
  expr <- dfs_exprs[[kk]][["expr"]]
  truth <- sort(dfs_exprs[[kk]][["truth"]])
  message(sprintf(" - [%d/%d] %s", kk, length(dfs_exprs), name))
  globals <- sort(findGlobalsDFS(expr, debug = TRUE))
  stopifnot(identical(globals, truth))
}

message("*** findGlobals_dfs(..., debug = TRUE) ... DONE")


## -------------------------------------------------------------------
## findGlobals(..., method = "dfs") should forward 'debug' to the
## internal findGlobalsDFS()/findGlobals_dfs() machinery, the same way
## options(globals.debug = TRUE) already affects the other methods.
## -------------------------------------------------------------------
message("*** findGlobals(..., method = 'dfs') forwards debug ...")
out <- utils::capture.output(
  globals <- findGlobals(quote(a_debug_dfs + b_debug_dfs), method = "dfs"),
  type = "message"
)
stopifnot(identical(sort(globals), c("+", "a_debug_dfs", "b_debug_dfs")))
stopifnot(any(grepl("findGlobals_dfs", out, fixed = TRUE)))
message("*** findGlobals(..., method = 'dfs') forwards debug ... DONE")


## -------------------------------------------------------------------
## findGlobals() - trace = TRUE with more than one 'method'
## -------------------------------------------------------------------
message("*** findGlobals(..., method = c(...), trace = TRUE) ...")
globals <- sort(findGlobals(quote(a_multi + b_multi), method = c("ordered", "dfs"), trace = TRUE))
stopifnot(identical(globals, c("+", "a_multi", "b_multi")))
message("*** findGlobals(..., method = c(...), trace = TRUE) ... DONE")


## -------------------------------------------------------------------
## findGlobals() - debug = TRUE with a list of only basic-type elements
## -------------------------------------------------------------------
message("*** findGlobals(<list>, ...) with only basic-type elements ...")
globals <- findGlobals(list(1, "a", TRUE), method = "ordered")
stopifnot(identical(globals, character(0L)))
message("*** findGlobals(<list>, ...) with only basic-type elements ... DONE")


## -------------------------------------------------------------------
## call_find_globals_with_dotdotdot() - trace = TRUE with '...' detected
## -------------------------------------------------------------------
message("*** findGlobals(function() list(...), trace = TRUE) ...")
fcn <- function() list(...)
globals <- findGlobals(fcn, method = "ordered", trace = TRUE)
stopifnot(identical(globals, c("list", "...")))
message("*** findGlobals(function() list(...), trace = TRUE) ... DONE")


## -------------------------------------------------------------------
## find_globals_conservative() / find_globals_liberal() - trace = TRUE
## for an expression that is neither a function nor a call to a
## function value (goes via as_function())
## -------------------------------------------------------------------
message("*** method = 'conservative'/'liberal' with trace = TRUE ...")
globals_c <- sort(findGlobals(quote(x_cons + a_cons), method = "conservative", trace = TRUE))
stopifnot(identical(globals_c, c("+", "a_cons", "x_cons")))
globals_l <- sort(findGlobals(quote(x_lib + a_lib), method = "liberal", trace = TRUE))
stopifnot(identical(globals_l, c("+", "a_lib", "x_lib")))
message("*** method = 'conservative'/'liberal' with trace = TRUE ... DONE")


## -------------------------------------------------------------------
## find_globals_ordered() - trace = TRUE, formal re-entered as a local
## (assignment) and as a global (plain reference)
## -------------------------------------------------------------------
message("*** method = 'ordered' with trace = TRUE, re-entered formals ...")
globals <- findGlobals(function(p_dup) { p_dup <- p_dup + 1; p_dup }, method = "ordered", trace = TRUE)
assert_identical_sets(globals, c("{", "+", "<-"))

globals <- findGlobals(function(p_ref) p_ref, method = "ordered", trace = TRUE)
stopifnot(identical(globals, character(0L)))
message("*** method = 'ordered' with trace = TRUE, re-entered formals ... DONE")


## -------------------------------------------------------------------
## collect_usage_function() - trace = TRUE with a formal that has a
## default value (only formals with defaults are walked individually)
## -------------------------------------------------------------------
message("*** method = 'ordered' with trace = TRUE, formal with default ...")
globals <- findGlobals(function(a_cuf, b_cuf = 1) a_cuf + b_cuf, method = "ordered", trace = TRUE)
stopifnot(identical(globals, "+"))
message("*** method = 'ordered' with trace = TRUE, formal with default ... DONE")


## -------------------------------------------------------------------
## find_globals_ordered() - called directly on an 'expression' object
## (findGlobals() always unwraps expression objects before dispatching
## to find_globals_ordered(), so this branch is only reachable by
## calling the internal function directly)
## -------------------------------------------------------------------
message("*** find_globals_ordered(<expression>, trace = TRUE) ...")
globals <- find_globals_ordered(expression(a_expr + b_expr), envir = globalenv(),
                                dotdotdot = "warning", trace = TRUE)
stopifnot(identical(globals, character(0L)))
message("*** find_globals_ordered(<expression>, trace = TRUE) ... DONE")


## -------------------------------------------------------------------
## globalsOf() - debug = TRUE with 'ignore' dropping a name
## -------------------------------------------------------------------
message("*** globalsOf(..., ignore = ...) with debug = TRUE ...")
globals <- globalsOf(quote(zzz_ignored_var + pi), ignore = "zzz_ignored_var")
stopifnot(identical(sort(names(globals)), c("+", "pi")))
message("*** globalsOf(..., ignore = ...) with debug = TRUE ... DONE")


## -------------------------------------------------------------------
## where() - debug = TRUE, not found, with and without inheritance
## -------------------------------------------------------------------
message("*** where() - not found, debug = TRUE ...")
e_leaf <- new.env(parent = emptyenv())
stopifnot(is.null(where("zzz_not_found_xyz", envir = e_leaf, inherits = FALSE)))
stopifnot(is.null(where("zzz_not_found_xyz", envir = e_leaf, inherits = TRUE)))
message("*** where() - not found, debug = TRUE ... DONE")


## -------------------------------------------------------------------
## packagesOf.Globals() - non-closure globals whose 'where' attribute
## is (a) an environment named "package:<pkg>" and (b) not an environment
## -------------------------------------------------------------------
message("*** packagesOf() - 'where' attribute edge cases ...")
globals <- as.Globals(list(x = 1))
attr(globals, "where") <- list(x = as.environment("package:stats"))
pkgs <- packagesOf(globals)
stopifnot(identical(pkgs, "stats"))

globals <- as.Globals(list(x = 1))
attr(globals, "where") <- list(x = NULL)
pkgs <- packagesOf(globals)
stopifnot(identical(pkgs, character(0L)))
message("*** packagesOf() - 'where' attribute edge cases ... DONE")


## -------------------------------------------------------------------
## R/utils-debug.R helpers called directly with debug = FALSE (no-ops)
## and debug = TRUE (the 'if (!debug) return()' guards in both states)
## -------------------------------------------------------------------
message("*** utils-debug.R helpers, debug = FALSE and TRUE ...")
stopifnot(is.null(mdebug_push("x", debug = FALSE)))
stopifnot(is.null(mdebugf_push("x", debug = FALSE)))
stopifnot(is.null(mdebug_pop("x", debug = FALSE)))
stopifnot(is.null(mdebugf_pop("x", debug = FALSE)))
stopifnot(is.null(mdebugf("x", debug = FALSE)))
stopifnot(is.null(mprint("x", debug = FALSE)))
stopifnot(is.null(mstr("x", debug = FALSE)))

invisible(mdebug_push("test push", debug = TRUE))
invisible(mdebugf_push("test push %s", "f", debug = TRUE))
invisible(mdebugf_pop("test pop", debug = TRUE))
invisible(mdebug_pop("test pop", debug = TRUE))
invisible(mdebugf("test %s", "msg", debug = TRUE))
invisible(mprint(1:3, debug = TRUE))
invisible(mstr(1:3, debug = TRUE))
message("*** utils-debug.R helpers, debug = FALSE and TRUE ... DONE")


options(oopts)
