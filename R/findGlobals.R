#' @param attributes If TRUE (default), attributes of `expr` are also searched.
#' If FALSE, they are not.
#' If a character vector, then attributes with matching names are searched.
#' Note, the attributes of the attributes' elements are not searched, that is,
#' attributes are not searched recursively.  Also, attributes are searched
#' with `dotdotdot = "ignore"`.
#'
#' @param dotdotdot TBD.
#'
#' @param trace TBD.
#'
#' @return \code{findGlobals()} returns a character vector.
#'
#' @rdname globalsOf
#' @export
findGlobals <- function(expr, envir = parent.frame(), ...,
                        attributes = TRUE,
                        tweak = NULL,
                        dotdotdot = c("warning", "error", "return", "ignore"),
                        method = c("ordered", "conservative", "liberal", "dfs"),
                        substitute = FALSE, unlist = TRUE, trace = FALSE) {
  if (missing(method)) method <- method[1]                        
  method <- match.arg(method, choices = c("ordered", "conservative", "liberal", "dfs"), several.ok = TRUE)
  dotdotdot <- match.arg(dotdotdot, choices = c("warning", "error", "return", "ignore"))

  if (substitute) expr <- substitute(expr)

  if (trace) {
    methods <- sprintf("'%s'", method)
    if (length(method) > 1) methods <- sprintf("c(%s)", paste(methods, collapse = ", "))
    trace_msg <- trace_enter("findGlobals(..., dotdotdot = '%s', method = %s, unlist = %s)", dotdotdot, methods, unlist)
    on.exit(trace_exit(trace_msg))
  }

  debug <- isTRUE(getOption("globals.debug"))
  if (debug) {
    methods <- sprintf("'%s'", method)
    if (length(method) > 1) methods <- sprintf("c(%s)", paste(methods, collapse = ", "))
    mdebugf_push("findGlobals(..., dotdotdot = '%s', method = %s, unlist = %s) ...", dotdotdot, methods, unlist)
    on.exit(mdebugf_pop("findGlobals(..., dotdotdot = '%s', method = %s, unlist = %s) ... done", dotdotdot, methods, unlist), add = TRUE)
  }

  if (length(method) > 1) {
    if (!unlist) {
      stop("Argument 'unlist' must be TRUE if more than one 'method' is specified: ", commaq(method))
    }
    if (is.function(tweak)) {
      if (debug) mdebug("tweaking expression using function")
      expr <- tweak(expr)
    }
    globals <- list()
    for (mtd in method) {
      globals[[mtd]] <- findGlobals(
        expr, substitute = FALSE, envir = envir, ...,
        attributes = attributes, tweak = NULL,
        dotdotdot = dotdotdot, method = mtd,
        unlist = TRUE, trace = trace
      )
    }

    globals_all <- unlist(globals, use.names = FALSE)
    globals_all <- globals_all[!duplicated(globals_all)]

    if (debug) {
      mdebug("Globals found by per method:")
      w <- max(nchar(method)) + 2L
      for (mtd in method) {
        names <- globals[[mtd]]
        delta <- setdiff(globals_all, names)
        delta <- if (length(delta) == 0) "<none>" else commaq(delta)
        mdebugf("%*s: %s [delta: %s]", w, sQuote(mtd), commaq(names), delta)
      }
    }

    return(globals_all)
  } ## if (length(method) > 1)

  if (is.logical(attributes)) {
    stop_if_not(length(attributes) == 1L, !is.na(attributes))
    if (!attributes) attributes <- character(0L)
  } else {
    stop_if_not(is.character(attributes), !anyNA(attributes))
  }
  
  if (is.list(expr)) {
    if (debug) mdebugf("expr: <a list of length %d>", .length(expr))

    ## NOTE: Do *not* look for types that we are interested in, but instead
    ## look for types that we are *not* interested in.  The reason for this is that
    ## in future versions of R there might be new types added that may contain
    ## globals and with this approach those types will also be scanned.
    basicTypes <- c("logical", "integer", "double", "complex", "character",
                    "raw", "NULL")

    ## Skip elements in 'expr' of basic types that cannot contain globals
    types <- unlist(list_apply(expr, FUN = typeof), use.names = FALSE)
    keep <- which(!(types %in% basicTypes))

    ## Early stopping?
    if (length(keep) == 0) {
      if (debug) mdebug("globals found: [0] <none>")
      return(character(0L))
    }

    globals <- list_apply(expr, subset = keep, FUN = findGlobals, envir = envir,
                      attributes = attributes, ...,
                      tweak = tweak, dotdotdot = dotdotdot,
                      method = method,
                      substitute = FALSE, unlist = FALSE,
                      trace = trace)
    
    keep <- types <- NULL ## Not needed anymore
    
    if (debug) mdebugf("preliminary globals found: [%d] %s",
                    length(globals), hpaste(sQuote(names(globals))))

    if (unlist) {
      globals <- unlist(globals, use.names = FALSE)
      if (length(globals) > 1L) globals <- unique(globals)
      ## Move any ..., ..1, ..2, etc. to the very end
      idxs <- grep("^[.][.]([.]|[0-9]+)$", globals)
      if (length(idxs) > 0L) globals <- c(globals[-idxs], globals[idxs])
    }

    if (debug) mdebugf("globals found: [%d] %s",
                    length(globals), hpaste(sQuote(globals)))
    return(globals)
  }

  if (is.function(tweak)) {
    if (debug) mdebug("tweaking expression using function")
    expr <- tweak(expr)
  }

  if (method == "dfs") {
    globals <- findGlobalsDFS(expr)
  } else {
    if (hasCodetoolsBug16()) {
      if (debug) mdebug("workaround 'codetools' bug #16")
      expr <- walkAST(expr, call = tweakCodetoolsBug16)
    }

    if (is.expression(expr)) {
      return(findGlobals(expr[[1]], substitute = substitute, envir = envir,
                         attributes = attributes, tweak = tweak, ...,
                         dotdotdot = dotdotdot, method = method,
                         unlist = unlist, trace = trace))
    }

    if (method == "ordered") {
      find_globals_t <- find_globals_ordered
    } else if (method == "conservative") {
      find_globals_t <- find_globals_conservative
    } else if (method == "liberal") {
      find_globals_t <- find_globals_liberal
    }
  
    globals <- call_find_globals_with_dotdotdot(find_globals_t, expr = expr, envir = envir, dotdotdot = dotdotdot, trace = trace, debug = debug)
    idx <- which(globals == "codetools.bugfix16:::$<-")
    if (length(idx) > 0) {
      globals[idx] <- "$<-"
      globals <- unique(globals)
    }
  } ## if (method == ...)

  ## Search attributes?
  if (length(attributes) > 0) {
    attrs <- attributes(expr)
    if (is.character(attributes)) {
      attrs <- attrs[names(attrs) %in% attributes]
    }

    ## Attributes to be searched, if any
    if (length(attrs) > 0) {
      if (debug) mdebug("searching attributes")
      attrs_globals <- list_apply(attrs, FUN = findGlobals, envir = envir,
                                  ## Don't look for attributes recursively
                                  attributes = FALSE,
                                  tweak = tweak,
                                  ...,
                                  ## Don't complain about '...', '..1', etc.
                                  dotdotdot = "ignore",
                                  method = method,
                                  substitute = FALSE, unlist = FALSE,
                                  trace = trace)
      if (unlist) attrs_globals <- unlist(attrs_globals, use.names = FALSE)
      if (length(attrs_globals) > 1L) attrs_globals <- unique(attrs_globals)
      if (debug) mdebugf("globals found in attributes: [%d] %s",
                      length(attrs_globals), hpaste(sQuote(attrs_globals)))
      globals <- unique(c(globals, attrs_globals))
    }
  }
  
  if (debug) mdebugf("globals found: [%d] %s", length(globals), hpaste(sQuote(globals)))

  globals
}


## Utility functions adopted from codetools:::dropMissing()
## and codetools:::collectUsageFun()
drop_missing_formals <- function(x) {
  nx <- length(x)
  ix <- logical(length = nx)
  for (i in seq_len(nx)) {
    tmp <- x[[i]]
    if (!missing(tmp)) ix[i] <- TRUE
  }
  x[ix]
}

#' @importFrom codetools walkCode findLocalsList
collect_usage_function <- function(fun, name, w, trace = FALSE) {
  if (trace) {
    trace_msg <- trace_enter("collect_usage_function()")
    on.exit(trace_exit(trace_msg))
  }
  
  formals <- formals(fun)
  body <- body(fun)

  w$name <- c(w$name, name)
  parnames <- names(formals)
  if (trace) {
    trace_printf("parnames: [n=%d] %s\n", length(parnames), commaq(parnames))
  }

  formals_clean <- drop_missing_formals(formals)
#  locals <- findLocalsList(c(list(body), formals_clean))
  locals <- findLocalsList(formals_clean)
  
  if (trace) {
    trace_printf("formals_clean: [n=%d] %s\n", length(formals_clean), commaq(formals_clean))
    trace_printf("locals: [n=%d] %s\n", length(locals), commaq(locals))
  }

  ## Hardcode locals?
  hardcoded_locals <- c(parnames, locals)
  if (length(hardcoded_locals) > 0) {
    if (trace) trace_printf("Add hardcoded local variables %s", commaq(hardcoded_locals))
    w$env <- new.env(hash = TRUE, parent = w$env)
    for (n in hardcoded_locals) assign(n, TRUE, w$env)
  }

  if (trace) {
    trace_printf("hardcoded locals: [n=%d] %s\n", length(w$env), commaq(names(w$env)))
  }

  for (a in formals_clean) {
    if (trace) trace_enter("walkCode(%s)", sQuote(a))
    walkCode(a, w)
    if (trace) trace_exit("walkCode(%s)", sQuote(a))
  }

  if (trace) trace_enter("walkCode(body)")
  res <- walkCode(body, w)
  if (trace) trace_exit("walkCode(body)")
  
  res
}


inject_tracer_to_function <- function(fcn, name) {
  b <- body(fcn)
  f <- formals(fcn)
  args <- setdiff(names(f), c("w", "..."))
  if (length(args) > 0L) {
    args <- grep("^[.][.][0-9]+$", args, invert = TRUE, value = TRUE)
  }
  title <- sprintf("%s()", name)
  b <- bquote({
    ## Import private functions
    ns <- getNamespace("globals")
    trace_str <- get("trace_str", envir = ns, mode = "function")
    trace_exit <- get("trace_exit", envir = ns, mode = "function")
    trace_printf <- get("trace_printf", envir = ns, mode = "function")
    trace_print <- get("trace_print", envir = ns, mode = "function")
    
    trace_msg <- trace_enter("%s", .(title))
    trace_indent <- attr(trace_msg, "indent")
    if (length(.(args)) > 0) trace_str(mget(.(args)), indent = trace_indent)
    if (!exists("w", mode = "list")) {
      trace_exit(trace_msg)
      return()
    }
    env <- environment(w$enterLocal)
    n <- length(env$name)
    value <- .(b)
    nnew <- (length(env$name) - n)
    if (nnew) {
      trace_printf("variables:\n", indent = trace_indent)
      trace_print(data.frame(
        name  = env$name,
        class = env$class,
        added = c(rep(FALSE, times = n), rep(TRUE, times = nnew)),
        stringsAsFactors = FALSE
      ), indent = trace_indent)
    }
    trace_printf("result: ", indent = trace_indent)
    trace_str(value, indent = trace_indent)
    trace_exit(trace_msg)
    value
  })
  body(fcn) <- b
  fcn
}

inject_tracer_to_walker <- function(w) {
  if (is.null(w$startCollectLocals)) {
    w$startCollectLocals <- function(parnames, locals, ...) { NULL }
  }
  if (is.null(w$finishCollectLocals)) {
    w$finishCollectLocals <- function(w, ...) { NULL }
  }
  if (is.null(w$enterInternal)) {
    w$enterInternal <- function(type, v, e, ...) { NULL }
  }
  
  for (key in names(w)) {
    fcn <- w[[key]] 
    if (!is.function(fcn)) next
#    fcn <- inject_tracer_to_function(fcn, key)
    w[[key]] <- fcn
  }
  
  w
}


#' @importFrom codetools makeUsageCollector walkCode
make_usage_collector <- local({
  ## WORKAROUND: Avoid calling codetools::collectUsageCall() if it hits the
  ## https://bugs.r-project.org/bugzilla/show_bug.cgi?id=17935 bug in the
  ## stats:::`[.formula` function
  ## See also: https://github.com/HenrikBengtsson/globals/issues/64
  if (getRversion() <= "4.0.3" || is.null(ver <- R.version$`svn rev`) ||
      is.na(ver <- as.integer(ver)) || ver < 79355) {
    ## Local copy of codetools:::collectUsageCall()
    .collectUsageCall <- NULL

    collectUsageCall <- function(e, w) {
      e1 <- e[[1]]
      if (is.symbol(e1) && inherits(e, "formula") && is.null(e[[2]])) {
        ## From codetools:::collectUsageCall()
        fn <- as.character(e1)
        if (w$isLocal(fn, w))  {
           w$enterLocal("function", fn, e, w)
        } else {
           w$enterGlobal("function", fn, e, w)
        }
      } else {
        .collectUsageCall(e, w)
      }
    }
    
    function(...) {
      w <- makeUsageCollector(...)
      w$env <- new.env(parent = w$env)
      if (is.function(w$call)) {
        ## Memoize? (to avoid importing a private 'codetools' function)
        if (is.null(.collectUsageCall)) .collectUsageCall <<- w$call
        ## Patch
        w$call <- collectUsageCall
      }
      w
    }
  } else {
    function(...) {
      w <- makeUsageCollector(...)
      w$env <- new.env(hash = TRUE, parent = w$env)
      w
    }
  }
})
