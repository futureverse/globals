#' @rdname packagesOf.Globals
#' @export
packagesOf <- function(...) UseMethod("packagesOf")

#' Identify the packages of the globals
#'
#' @param globals A Globals object.
#' @param \ldots Not used.
#'
#' @return Returns a character vector of package names.
#'
#' @export
packagesOf.Globals <- function(globals, ...) {
  ## Scan 'globals' for which packages they are from.  This information is
  ## in the name of the environment as given by the 'where' attribute with
  ## a fallback to the global object.
  
  where <- attr(globals, "where")
  pkgs <- rep(NA_character_, times = length(globals))
  extra_pkgs <- character(0L)
  for (kk in seq_along(globals)) {
    obj <- globals[[kk]]

    ## S4 generic functions record their origin in the 'package' attribute
    if (is.function(obj) && !is.null(attr(obj, "generic", exact = TRUE))) {
      pkg <- attr(obj, "package", exact = TRUE)
      if (!is.null(pkg) && nzchar(pkg)) {
        pkgs[kk] <- pkg
        next
      }
    }

    env <- environment_of(obj)

    ## If not found, it could be an object in a package without a closure
    if (identical(env, emptyenv())) {
      w <- where[[kk]]
      if (is.environment(w)) {
        pkg <- environmentName(w)
        if (grepl("^package:", pkg)) pkg <- sub("^package:", "", pkg)
      } else {
        pkg <- environmentName(env)
      }
    } else {
      pkg <- environmentName(env)
    }

    pkgs[kk] <- pkg

    ## S4 object record the package defining the class in the
    ## 'package' attribute of the 'class' attribute.
    if (isS4(obj)) {
      class_pkg <- attr(class(obj), "package", exact = TRUE)
      if (!is.null(class_pkg) && nzchar(class_pkg)) {
        extra_pkgs <- c(extra_pkgs, class_pkg)
      }
    }
  }
  pkgs <- c(pkgs, extra_pkgs)

  ## Drop "missing" packages, e.g. globals in globalenv().
  pkgs <- pkgs[nzchar(pkgs)]

  ## Drop global environment
  pkgs <- pkgs[pkgs != "R_GlobalEnv"]

  ## Keep only names matching loaded namespaces
  pkgs <- intersect(pkgs, loadedNamespaces())

  ## Packages to be loaded
  pkgs <- unique(pkgs)

  ## Sanity check
  stop_if_not(all(nzchar(pkgs)))

  pkgs
} # packagesOf()

