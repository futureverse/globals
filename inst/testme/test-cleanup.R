library(globals)

message("*** cleanup() ...")

message("- cleanup() with remapped base functions")

## Don't clean out renamed base functions
## https://github.com/HenrikBengtsson/globals/issues/57
globals <- list(
  my_fcn      = function(x) x,   ## should not be deleted
  identity    = base::identity,
  my_identity = base::identity   ## should not be deleted
)
expected <- c("my_fcn", "my_identity")

## Add an example of an internal/non-exported package object from 'utils'.
## Such objects need to be kept because they will not be on the search path
## even if the package is attached
ns <- asNamespace("utils")
pkg <- as.environment("package:utils")
internals <- setdiff(ls(ns, all.names = TRUE), ls(pkg, all.names = TRUE))
internals <- grep("^print", internals, value = TRUE)
if (length(internals) > 0L) {
  name <- internals[1]
  obj <- get(name, envir = ns, inherits = FALSE)
  stopifnot(!exists(name, envir = pkg, inherits = FALSE))
  globals[[name]] <- obj
  expected <- c(expected, name)
  name <- sprintf("my-%s", name)
  globals[[name]] <- obj
  expected <- c(expected, name)
}

globals <- as.Globals(globals)
str(globals)

globals <- cleanup(globals)
str(globals)
assert_identical_sets(names(globals), expected)


message("- cleanup() with missing globals")
rm(list = "b")
expr <- quote(a <- b)
print(expr)
globals <- globalsOf(expr, mustExist = FALSE)
str(globals)
stopifnot(identical(names(globals), c("<-", "b")))


message("- cleanup(globals) with missing globals")
pruned <- cleanup(globals)
str(pruned)
stopifnot(length(pruned) == 0L)

message("- cleanup(globals, drop = 'missing') with missing globals")
pruned <- cleanup(globals, drop = "missing")
str(pruned)
stopifnot(identical(names(pruned), c("<-")))

message("- cleanup(globals, drop = 'base-packages') with missing globals")
pruned <- cleanup(globals, drop = "base-packages")
str(pruned)
stopifnot(identical(names(pruned), c("b")))

message("- cleanup() dropping primitives")
stopifnot(is.primitive(base::c))
globals <- as.Globals(list(my_fcn = function(x) x, c = base::c))
where <- attr(globals, "where")
where[["c"]] <- baseenv()
attr(globals, "where") <- where

pruned <- cleanup(globals, drop = "primitives")
str(pruned)
stopifnot(
  "my_fcn" %in% names(pruned),
  !"c" %in% names(pruned)
)

message("- cleanup() dropping internals")
stopifnot(globals:::is_internal(base::print.default))
globals <- as.Globals(list(my_fcn = function(x) x, print.default = base::print.default))
where <- attr(globals, "where")
where[["print.default"]] <- baseenv()
attr(globals, "where") <- where

pruned <- cleanup(globals, drop = "internals")
str(pruned)
stopifnot(
  "my_fcn" %in% names(pruned),
  !"print.default" %in% names(pruned)
)


message("- cleanup() dropping NativeSymbolInfo ...")
## Use a name that actually exists in the base namespace (private/non-exported)
## so that is_private becomes TRUE in the cleanup logic
mock_nsi <- structure(
  list(
    name = "test",
    address = structure(TRUE, class = "RegisteredNativeSymbol"),
    numParameters = 1L
  ),
  class = "NativeSymbolInfo"
)
globals <- as.Globals(list(my_fcn = function(x) x, .C_R_addTaskCallback = mock_nsi))
where <- attr(globals, "where")
where[[".C_R_addTaskCallback"]] <- baseenv()
attr(globals, "where") <- where

pruned <- cleanup(globals)
str(pruned)
stopifnot(
  "my_fcn" %in% names(pruned),
  !".C_R_addTaskCallback" %in% names(pruned)
)

message("- cleanup() dropping NativeSymbolInfo ... DONE")


message("- packagesOf() - non-closure globals (emptyenv path) ...")
## pi is numeric (not a closure), environment_of => emptyenv()
globals <- globalsOf(quote(pi))
pkgs <- packagesOf(globals)
stopifnot("base" %in% pkgs)
message("- packagesOf() - non-closure globals ... DONE")


message("*** cleanup() ... DONE")

