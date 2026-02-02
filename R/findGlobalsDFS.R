dframe <- function(name = NA_character_, bound = character(0L), unbound = character(0L), type = NA_character_, comment = NA_character_) {
  res <- data.frame(name = name, bound = NA, unbound = NA, type = type, comment = comment)
  bound <- unique(bound)
  unbound <- unique(unbound)
  stopifnot(is.character(bound))
  stopifnot(is.character(unbound))
  res[[1, "bound"]] <- list(bound)
  res[[1, "unbound"]] <- list(unbound)
  res
} ## dframe()


findGlobals_dfs_symbol <- function(expr, ..., debug = FALSE) {
  if (debug) {
    mdebugf_push("findGlobals_dfs_symbol() ...")
    mprint(expr)
    mdebugf("typeof: %s, class: %s", typeof(expr), class(expr)[1])
    on.exit({
      mprint(globals)
      mdebugf_pop("findGlobals_dfs_symbol() ... done")
    })
  }

  name <- as.character(expr)
  if (nzchar(name)) {
    globals <- dframe(name = name, unbound = name, type = "symbol", comment = "symbol")
  } else {
    globals <- dframe(name = "<missing>", type = "symbol", comment = "symbol")
  }

  globals
}

findGlobals_dfs_atomic <- function(expr, ..., debug = FALSE) {
  if (debug) {
    mdebugf_push("findGlobals_dfs_atomic() ...")
    mprint(expr)
    mdebugf("typeof: %s, class: %s", typeof(expr), class(expr)[1])
    on.exit({
      mprint(globals)
      mdebugf_pop("findGlobals_dfs_atomic() ... done")
    })
  }

  name <- as.character(expr)
  typeof <- typeof(expr)

  if (typeof %in% c("logical", "integer", "double", "complex", "character", "raw", "NULL")) {
    if (debug) mdebugf("Skipping because typeof = %s", sQuote(typeof))
    ## Basic types that cannot contain unbound variables
    if (inherits(expr, "srcref")) {
      name <- "<srcref>"
    } else if (length(name) != 1L) {
      name <- NA_character_
    }
    globals <- dframe(name = name, type = "constant", comment = "atomic")
  } else {
    bound <- unbound <- character(0L)
    if (grepl("^[[:alpha:]]", name, ignore.case = TRUE)) {
      bound <- name
      unbound <- name
    }
    globals <- dframe(name = name, bound = bound, unbound = unbound, type = "constant", comment = "atomic")
  }
  globals
}

findGlobals_dfs_pairlist <- function(expr, ..., debug = FALSE) {
  if (debug) {
    mdebugf_push("findGlobals_dfs_pairlist() ...")
    mprint(expr)
    on.exit({
      mprint(globals)
      mdebugf_pop("findGlobals_dfs_pairlist() ... done")
    })
  }
  n <- length(expr)
  if (n == 0) return(NULL)
  globals <- list()
  for (name in names(expr)) {
    globals[[name]] <- dframe(name = name, type = typeof(expr[[name]]), comment = "pairlist element")
    globals[[sprintf("%s-formals", name)]] <- findGlobals_dfs(expr[[name]], debug = debug)
  }
  globals <- do.call(rbind, args = globals)
  globals
}

findGlobals_dfs_call <- function(expr, ..., debug = FALSE) {
  if (debug) {
    mdebugf_push("findGlobals_dfs_call() ...")
    mprint(expr)
    mdebugf("typeof: %s, class: %s", typeof(expr), class(expr)[1])
    on.exit({
      mprint(globals)
      mdebugf_pop("findGlobals_dfs_call() ... done")
    })
  }
  n <- length(expr)
  globals <- list()
  
  op <- expr[[1]]
  typeof <- typeof(op)
  mstr(list(op = op, typeof = typeof, length = length(op)))
  
  if (typeof %in% c("builtin", "closure")) {
    if (debug) mdebug_push("Function call via %s ...", typeof)
    globals <- list()
    for (kk in seq_len(n)) {
      globals[[kk]] <- findGlobals_dfs(expr[[kk]], debug = debug)
    }
    if (debug) mdebug_pop("Function call via %s ... done", typeof)
  } else if (typeof == "symbol" && (as.character(op) %in% c("for", "function"))) {
    if (as.character(op) == "for") {
      if (debug) mdebug_push("For loop ...")
      globals[[1]] <- dframe(unbound = "for", type = "for-loop", comment = "for-loop")
      globals_iter <- findGlobals_dfs(expr[[2]], debug = debug)
      globals_iter[["bound"]] <- globals_iter[["unbound"]]
      globals_iter[["unbound"]] <- list(character(0L))
      globals_iter[["comment"]] <- "for-loop iterator"
      globals[[2]] <- globals_iter
      globals_args <- findGlobals_dfs(expr[[3]], debug = debug)
      globals_args[["comment"]] <- "for-loop arguments"
      globals[[3]] <- globals_args
      globals_body <- findGlobals_dfs(expr[[4]], debug = debug)
      globals_body[["comment"]] <- "for-loop body"
      globals[[4]] <- globals_body
      if (debug) mdebug_pop("For loop ... done")
    } else if (as.character(op) == "function") {
      if (debug) mdebug_push("Function call via function ...")
      globals[[1]] <- dframe(type = "closure", comment = "function definition")
      stopifnot(n >= 3L)
  
      if (debug) mdebugf("Function definition:")
  
      ## Arguments
      globals_args <- findGlobals_dfs(expr[[2]], debug = debug)
      if (debug) {
        mdebugf("Function arguments:")
        mprint(globals_args)
      }
      globals_args[["comment"]] <- "arguments"
      name_args <- globals_args[["name"]]
      bound_args <- unlist(globals_args[["bound"]])
      unbound_args <- unlist(globals_args[["unbound"]])
  
      ## Body
      globals_body <- findGlobals_dfs(expr[[3]], debug = debug)
      if (debug) {
        mdebugf("Function body:")
        mprint(globals_body)
      }
      globals_body[["comment"]] <- "body"
      bound_body <- unlist(globals_body[["bound"]])
      unbound_body <- unlist(globals_body[["unbound"]])
      unbound_body <- setdiff(unbound_body, name_args)
      globals_body[["bound"]] <- list(bound_body)
      globals_body[["unbound"]] <- list(unbound_body)
      if (debug) {
        mdebugf("globals_body:")
        mprint(globals_body)
      }
  
      globals_args[["bound"]] <- list(bound_args)
      globals_args[["unbound"]] <- list(setdiff(unbound_args, bound_args))
      if (debug) {
        mdebugf("globals_args:")
        mprint(globals_args)
      }
  
      ## Consolidate
      globals[[2]] <- globals_args
      globals[[3]] <- globals_body
      if (debug) mdebug_pop("Function call via function ... done")
    }
  } else {
    if (typeof %in% c("call", "language")) {
      op_name <- as.character(op[[1]])
      name <- NA_character_
    } else {
      op_name <- character(0L)
      name <- as.character(op)
    }  

    if (debug) {
      mdebug_push("Function call in other ways ...")
      mdebugf("n = %d", n)
    }
    if (n == 1) {
      globals[[1]] <- findGlobals_dfs(op, debug = debug)
    } else if (n >= 2) {
      if (is.call(op)) {
        if (debug) mdebug_push("Function call whose function is a call ...")
        globals[[1]] <- findGlobals_dfs_call(op, debug = debug)
        if (debug) mdebug_pop("Function call whose function is a call ... done")
      } else {
        if (is.na(name)) name <- character(0L)
        globals[[1]] <- dframe(name = "function", unbound = c(name, op_name), type = "function", comment = "function call")
      }
      if (debug) {
        mdebug("---------------------------------")
        mprint(globals)
        mdebug("---------------------------------")
      }
      if (name %in% c("::", ":::")) {
        if (debug) mdebugf("<pkg>%s<obj>", name)
      } else {
        for (kk in 2:n) globals[[kk]] <- findGlobals_dfs(expr[[kk]], debug = debug)
        if (name %in% c("$", "@")) {
          if (debug) mdebugf("LHS%sRHS", name)
          ## LHS$RHS, LHS@RHS
          globals_lhs <- globals[[2]]
          globals_rhs <- globals[[3]]
          rhs <- expr[[3]]
          if (is.symbol(rhs)) {
            globals_rhs[["unbound"]] <- list(character(0L))
            globals[[3]] <- globals_rhs
          }
        } else if (name %in% c("=", "<-", "<<-")) {
          if (debug) mdebugf("LHS %s RHS", name)
          ## LHS <- RHS
          globals_op  <- globals[[1]]  ## e.g. `=`, `<-`, `<<-`
          globals_lhs <- globals[[2]]
          globals_rhs <- globals[[3]]

          lhs <- expr[[2]]
          if (length(lhs) >= 2) {
            ## From the R Language Definition, we have that:
            ##
            ##   names(x) <- c("a", "b")
            ##
            ## is equivalent to:
            ##
            ## `*tmp*` <- x
            ## x <- "names<-"(`*tmp*`, value=c("a","b"))
            ## rm(`*tmp*`)
            ##
            ## We also have that:
            ##
            ##   names(x)[3] <- "Three"
            ##
            ## is equivalent to:
            ## 
            ## `*tmp*` <- x
            ## x <- "names<-"(`*tmp*`, value="[<-"(names(`*tmp*`), 3, value="Three"))
            ## rm(`*tmp*`)
            ##
            ## One way to confirm that the R engine transpiles the original
            ## expression this way is to check which symbols the byte
            ## compiler produces, e.g.
            ##
            ##   expr <- quote(names(x)[2] <- "b")
            ##   bytecode <- compiler::compile(expr)
            ##   utils::capture.output(file = nullfile(), {
            ##     parts <- compiler::disassemble(bytecode)[[3]]
            ##   })
            ##   is_symbol <- vapply(parts, FUN.VALUE = FALSE, FUN = is.symbol)
            ##   symbols <- parts[is_symbol]
            ##   str(symbols)
            ##   #> List of 4
            ##   #>  $ : symbol x
            ##   #>  $ : symbol names
            ##   #>  $ : symbol names<-
            ##   #>  $ : symbol *vtmp*
            ##
            if (debug) mdebugf_push("Replacement function ...")
            ## Cases:
            ##
            ##  1. a[1] <- 0           => `[<-`
            ##  2. names(a) <- "x"     => `names<-`
            ##  3. names(a)[1] <- "x"  => `[<-`, `names<-`
            ##
            
            if (name == "=") name <- "<-"
            rhs <- expr[[3]]
            
            if (debug) {
              mdebugf("LHS: [n=%d] %s", length(lhs), commaq(as.character(lhs)))
              mprint(globals_lhs)
              mdebugf("RHS: [n=%d] %s", length(rhs), commaq(as.character(rhs)))
              mprint(globals_rhs)
            }

            ## We don't want the last element, e.g. `1`, `a`
            lhs_fcns <- lhs[-length(lhs)]
            if (debug) {
              mdebug("Possible functions to become replacement functions:")
              mstr(as.list(lhs_fcns))
            }
            
            if (length(lhs_fcns) == 1L) {
              ## names(x) <- ...   => `names<-`
              lhs_fcns <- lhs_fcns[[1]]
            } else if (length(lhs_fcns) == 2L) {
              ## x[1] <- ...
              ## names(x)[1] <- ...
              ## base::names(x)[1] <- ...
              first <- lhs_fcns[[1]]  ## `[`, `[[`, `$`, `@`
              second <- lhs_fcns[[2]] ## `x`, `names(x)`, `base::names(x)`
              if (is.call(second)) {  
                ## names(x)[1] <- ...
                ## base::names(x)[1] <- ...
                call <- second
                if (length(call[[1]]) == 1L) {
                  ## names(x)[1] <- ...
                  ## => keep lhs_fcns == lhs_fcns[1:2]
                } else if (length(call[[1]]) == 3L) {
                  ## base::names(x)[1] <- ...
                  ## => drop lhs_fcns[2]
                  lhs_fcns <- lhs_fcns[-2]  ## `[`
                }
              } else {
                ## x[1] <- 1
                lhs_fcns <- lhs_fcns[-2]  ## `[`
              }
            }

            if (debug) {
              mdebug("Functions to become replacement functions:")
              mstr(as.list(lhs_fcns))
            }
            
            fcns <- vapply(lhs_fcns, FUN.VALUE = NA_character_, FUN = function(x) { as.character(as.list(x)[[1]]) })
            repl_fcns <- sprintf("%s%s", fcns, name)
            fcns <- fcns[1]
            
            if (debug) {
              mdebugf("Replacement function and arguments: [n=%d] `%s`", length(fcns), commaq(fcns))
              mdebugf("Replacement function(s): [n=%d] `%s`", length(repl_fcns), commaq(repl_fcns))
            }
            globals_op[["unbound"]] <- list(repl_fcns)
            globals_lhs[["unbound"]] <- list(setdiff(unlist(globals_lhs[["unbound"]]), fcns))
            globals[[1]] <- globals_op
            globals[[2]] <- globals_lhs
            if (debug) mdebugf_pop("Replacement function ... done")
          }

          name_lhs <- globals_lhs[["name"]]
          bound_lhs <- unlist(globals_lhs[["bound"]])
          unbound_lhs <- unlist(globals_lhs[["unbound"]])
          
          bound_rhs <- unlist(globals_rhs[["bound"]])
          unbound_rhs <- unlist(globals_rhs[["unbound"]])

          ## Example a <- a + 1
          if (name_lhs %in% unbound_rhs) {
          } else {
            bound_lhs <- unique(c(name_lhs, bound_lhs))
            unbound_lhs <- setdiff(unbound_lhs, bound_lhs)
          }
          globals_lhs[["bound"]] <- list(bound_lhs)
          globals_lhs[["unbound"]] <- list(unbound_lhs)
          
          globals[[2]] <- globals_lhs
        }
      }
    } else {
    } ## if (n >= 2)
    if (debug) mdebug_pop("Function call in other ways ... done")
  }

  if (length(globals) == 1) {
    globals <- globals[[1]]
  } else {
    if (debug) {
      mprint(globals)
      mdebugf_push("Consolidate ...")
      mprint(expr)
    }
    
    bound <- unbound <- character(0L)
    for (kk in seq_along(globals)) {
      globals_kk <- globals[[kk]]
      bound_kk <- unlist(globals_kk[["bound"]])
      unbound_kk <- unlist(globals_kk[["unbound"]])
      ## Bound previously?
      unbound_kk <- setdiff(unbound_kk, bound)
      
      bound <- unique(c(bound, bound_kk))
      unbound <- unique(c(unbound, unbound_kk))
    }
    name <- NA_character_
    globals <- dframe(name = name, bound = bound, unbound = unbound, type = "language", comment = "consolidated")
    if (debug) {
      mdebugf_pop("Consolidate ... done")
    }
  }
  
  globals
}


findGlobals_dfs_environment <- function(expr, ..., debug = FALSE) {
  if (debug) {
    mdebugf_push("findGlobals_dfs_environment() ...")
    mprint(expr)
    mdebugf("typeof: %s, class: %s", typeof(expr), class(expr)[1])
    on.exit({
      mprint(globals)
      mdebugf_pop("findGlobals_dfs_environment() ... done")
    })
  }
  
  ## NOTE: Do *not* look for types that we are interested in, but instead
  ## look for types that we are *not* interested.  The reason for this is that
  ## in future versions of R there might be new types added that may contain
  ## globals and with this approach those types will also be scanned.
  basicTypes <- c("logical", "integer", "double", "complex", "character",
                  "raw", "NULL")

  ## Skip elements in 'expr' of basic types that cannot contain globals

  ## FIXME: The below can lead to infinite, recursive calls /HB 2025-04-27
  globals <- dframe(type = "environment", comment = "environment")
  return(globals)
  
  types <- unlist(list_apply(expr, FUN = typeof), use.names = TRUE)
  keep <- names(types)[!(types %in% basicTypes)]

  ## Early stopping?
  if (length(keep) == 0) {
    if (debug) mdebug("globals found: [0] <none>")
    globals <- dframe(type = "environment", comment = "environment")
  } else {
    ## FIXME: This can lead to infinite recursive calls /HB 2025-04-27
    if (FALSE) {
      globals <- list_apply(expr, subset = keep, FUN = findGlobals_dfs, ..., debug = debug)
      globals <- do.call(rbind, args = globals)
    }
    globals <- dframe(type = "environment", comment = "environment")
  }
  globals
} 


findGlobals_dfs_expression <- function(expr, ..., debug = FALSE) {
  if (debug) {
    mdebugf_push("findGlobals_dfs_expression() ...")
    mprint(expr)
    mdebugf("typeof: %s, class: %s", typeof(expr), class(expr)[1])
    on.exit({
      mprint(globals)
      mdebugf_pop("findGlobals_dfs_expression() ... done")
    })
  }
  
  ## NOTE: Do *not* look for types that we are interested in, but instead
  ## look for types that we are *not* interested.  The reason for this is that
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
    globals <- dframe(type = "expression", comment = "expression")
  } else {
    globals <- list_apply(expr, subset = keep, FUN = findGlobals_dfs, ..., debug = debug)
    globals <- do.call(rbind, args = globals)
  }
  globals
} 


findGlobals_dfs_function <- function(expr, ..., debug = FALSE) {
  if (debug) {
    mdebugf_push("findGlobals_dfs_function() ...")
    mprint(expr)
    mdebugf("typeof: %s, class: %s", typeof(expr), class(expr)[1])
    on.exit({
      mprint(globals)
      mdebugf_pop("findGlobals_dfs_function() ... done")
    })
  }

  args <- formals(expr)
  nargs <- length(args)
  arg_names <- names(args)
  if (is.null(arg_names)) {
    arg_names <- character(0L)
  }

  globals_arg_names <- dframe(bound = arg_names, type = "environment", comment = "environment")
  globals_args <- findGlobals_dfs(args, ..., debug = debug)
  globals_body <- findGlobals_dfs(body(expr), ..., debug = debug)

  ## Consolidate
  bound_arg_names <- unlist(globals_arg_names[["bound"]])
  unbound_arg_names <- unlist(globals_arg_names[["unbound"]])

  bound_args <- unlist(globals_args[["bound"]])
  unbound_args <- unlist(globals_args[["unbound"]])

  bound_body <- unlist(globals_body[["bound"]])
  unbound_body <- unlist(globals_body[["unbound"]])

  ## Variables in the formals or the body are not unbound, if
  ## they are arguments of the function
  unbound_args <- setdiff(unbound_args, bound_arg_names)
  unbound_body <- setdiff(unbound_body, bound_arg_names)
  
  if ("..." %in% bound_arg_names) {
    unbound_args <- grep("^[.][.][[:digit:]]+$", unbound_args, invert = TRUE, value = TRUE)
    unbound_body <- grep("^[.][.][[:digit:]]+$", unbound_body, invert = TRUE, value = TRUE)
  }

  ## Unbound variables may exist in the formals and the body
  unbound <- unique(c(unbound_arg_names, unbound_args, unbound_body))

  globals <- dframe(unbound = unbound, type = "function", comment = "consolidated")

  globals
}


findGlobals_dfs_object <- function(expr, ..., debug = FALSE) {
  if (debug) {
    mdebugf_push("findGlobals_dfs_object() ...")
    mprint(expr)
    mdebugf("typeof: %s, class: %s", typeof(expr), class(expr)[1])
    on.exit({
      mprint(globals)
      mdebugf_pop("findGlobals_dfs_object() ... done")
    })
  }
  ## FIXME: Should we search for globals in 'object's?
  globals <- dframe(type = typeof(expr), comment = typeof(expr))
  globals
}


findGlobals_dfs <- function(expr, ..., debug = FALSE) {
  debug <- isTRUE(getOption("globals.debug"))
  if (debug) {
    mdebugf_push("findGlobals_dfs() ...")
    mprint(expr)
    on.exit({
      mdebugf_pop("findGlobals_dfs() ... done")
    })
  }

  if (is.null(expr)) {
    globals <- dframe(type = "NULL", comment = "empty")
  } else if (is.symbol(expr)) {
    globals <- findGlobals_dfs_symbol(expr, debug = debug)
  } else if (is.atomic(expr)) {
    globals <- findGlobals_dfs_atomic(expr, debug = debug)
  } else if (is.call(expr)) {
    globals <- findGlobals_dfs_call(expr, debug = debug)
  } else if (is.pairlist(expr)) {
    globals <- findGlobals_dfs_pairlist(expr, debug = debug)
  } else if (is.environment(expr)) {
    globals <- findGlobals_dfs_environment(expr, debug = debug)
  } else if (is.expression(expr)) {
    globals <- findGlobals_dfs_expression(expr, debug = debug)
  } else if (is.function(expr)) {
    globals <- findGlobals_dfs_function(expr, debug = debug)
  } else if (is.list(expr)) {
    names <- findGlobals(expr, method = "dfs", debug = debug)
    globals <- dframe(unbound = names, type = "list", comment = "list")
  } else if (typeof(expr) %in% c("object", "S4")) {
    globals <- findGlobals_dfs_object(expr, debug = debug)
  } else if (typeof(expr) %in% c("externalptr")) {
    globals <- dframe(type = "externalptr", comment = "externalptr")
  } else {
    mprint(expr)
    mstr(expr)
    stop(sprintf("Do not know how to identify globals for an object of type '%s' and class '%s'", typeof(expr), class(expr)[1]))
  }

  globals
} ## findGlobals_dfs()


findGlobalsDFS <- function(expr, ..., debug = FALSE) {
  data <- findGlobals_dfs(expr, debug = debug)
  globals <- unlist(data[["unbound"]])

  ## FIXME: Should never get NA_character_:s here, but just in case ...
  isNA <- is.na(globals)
  if (any(isNA)) globals <- globals[!isNA]

  globals
}
