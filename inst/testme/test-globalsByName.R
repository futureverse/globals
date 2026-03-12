library(globals)

message("*** globalsByName() ...")

globals_c <- globalsByName(c("{", "<-", "c", "d"))
str(globals_c)
assert_identical_sets(names(globals_c), c("{", "<-", "c", "d"))
globals_c <- cleanup(globals_c)
str(globals_c)
assert_identical_sets(names(globals_c), c("c", "d"))
where <- attr(globals_c, "where")
stopifnot(
  length(where) == length(globals_c),
  identical(where$c, globalenv()),
  identical(where$d, globalenv())
)

foo <- globals::Globals
globals <- globalsByName(c("{", "foo", "list"), recursive = FALSE)
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
globals <- cleanup(globals, drop = "internals")
str(globals)
assert_identical_sets(names(globals), c("foo"))
pkgs <- packagesOf(globals)
stopifnot(pkgs == "globals")


## Also '...'
myGlobals <- function(x, ...) {
  globalsByName(c("a", "x", "..."))
}
globals <- myGlobals(x = 2, y = 3, z = 4)
str(globals)
assert_identical_sets(names(globals), c("a", "x", "..."))
assert_identical_sets(names(globals[["..."]]), c("y", "z"))

## And '..1', '..2', etc.
myGlobals <- function(x, ...) {
  globalsByName(c("a", "x", "..1", "..2"))
}
globals <- myGlobals(x = 2, y = 3, 4)
str(globals)
assert_identical_sets(names(globals), c("a", "x", "..1", "..2"))
stopifnot(
  globals[["..1"]] == 3,
  globals[["..2"]] == 4
)

## BUG FIX: Assert that '...' does not have to be specified at the end
myGlobals <- function(x, ...) {
  globalsByName(c("a", "...", "x"))
}
globals <- myGlobals(x = 2, y = 3, z = 4)
str(globals)
assert_identical_sets(names(globals), c("a", "x", "..."))
assert_identical_sets(names(globals[["..."]]), c("y", "z"))


## Test with arguments defaulting to other arguments
myGlobals <- function(x, y, z = y) {
  globalsByName(c("a", "x", "y", "z"))
}
globals <- myGlobals(x = 2, y = 3)
assert_identical_sets(names(globals), c("a", "x", "y", "z"))
stopifnot(globals$y == 3, identical(globals$z, globals$y))

globals <- myGlobals(x = 2, y = 3, z = 4)
assert_identical_sets(names(globals), c("a", "x", "y", "z"))
stopifnot(globals$y == 3, globals$z == 4)

myGlobals <- function(x, ...) {
  globalsByName(c("a", "x", "..."))
}
globals <- myGlobals(x = 2, y = 3)
assert_identical_sets(names(globals), c("a", "x", "..."))
assert_identical_sets(names(globals[["..."]]), c("y"))
stopifnot(globals[["..."]]$y == 3)

globals <- myGlobals(x = 2, y = 3, z = 4)
assert_identical_sets(names(globals), c("a", "x", "..."))
assert_identical_sets(names(globals[["..."]]), c("y", "z"))
stopifnot(globals[["..."]]$y == 3, globals[["..."]]$z == 4)

message("*** globalsByName() - debug ...")
a_gbn <- 1
oopts <- options(globals.debug = TRUE)
globals_gbn <- globalsByName("a_gbn")
stopifnot("a_gbn" %in% names(globals_gbn))
options(oopts)
message("*** globalsByName() - debug ... DONE")


message("*** globalsByName() - dotdotdots with debug ...")
oopts <- options(globals.debug = TRUE)
globals_dd_d <- globalsByName(c("a_gbn", "..1"), mustExist = FALSE)
stopifnot("a_gbn" %in% names(globals_dd_d))
stopifnot("..1" %in% names(globals_dd_d))
options(oopts)
rm(list = "a_gbn")
message("*** globalsByName() - dotdotdots debug ... DONE")


message("*** globalsByName() ... DONE")

