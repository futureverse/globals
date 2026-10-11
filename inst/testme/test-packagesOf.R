library(globals)

message("*** packagesOf() ...")

message("- packagesOf() identifies package of an S4 generic function ...")

## Emulate an S4 generic function (to avoid additional dependencies)
fcn <- function(x) NULL
attr(fcn, "generic") <- structure("fcn", package = "utils")
attr(fcn, "package") <- "utils"

globals <- as.Globals(list(fcn = fcn))
pkgs <- packagesOf(globals)
print(pkgs)
stopifnot("utils" %in% pkgs)

message("- packagesOf() identifies package of an S4 object ...")

## Emulate an S4 object (to avoid additional dependencies)
setClass("GlobalsTestS4", representation(x = "numeric"))

obj <- new("GlobalsTestS4", x = 1)
stopifnot(isS4(obj))
class(obj) <- structure("GlobalsTestS4", package = "utils")

globals <- as.Globals(list(obj = obj))
pkgs <- packagesOf(globals)
print(pkgs)
stopifnot("utils" %in% pkgs)

message("*** packagesOf() ... DONE")
