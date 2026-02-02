# Dynamically check if the 'codetools' bug has been fixed
hasCodetoolsBug16 <- local({
  hasBug <- NA
  
  function() {
    if (is.na(hasBug)) {
      ## Construct function with the bug, without triggering the
      ## bug when 'R CMD check' runs
      f <- eval(quote(function() NULL %% `$<-`(NULL, NULL)))
      hasBug <<- tryCatch({
        codetools::findGlobals(f)
        FALSE
      }, error = function(ex) TRUE)
    }
    hasBug
  }
})


# This tweaks the future expression to work around a bug [1,2] in the
# 'codetools' package affecting expression for format:
#
#    LHS INFIX_OPERATOR `$<-`(name, value)
#
# [1] https://github.com/futureverse/globals/issues/94
# [2] https://gitlab.com/luke-tierney/codetools/-/issues/16
tweakCodetoolsBug16 <- function(expr) {
  if (!is.call(expr)) return(expr)
  expr <- unclass(expr)  
  op <- expr[[1]]
  if (!is.symbol(op)) return(expr)

  ## An infix operator?
  op <- as.character(op)
  if (!grepl("^%[^%]*%$", op)) return(expr)

  n <- length(expr)
  if (n != 3) return(expr) ## Can this ever happen?
  rhs <- expr[[3]]

  ## Is RHS a call?
  if (!is.call(rhs)) return(expr)

  ## Is RHS a call to `$<-`?
  rhs_op <- rhs[[1]]
  if (!is.symbol(rhs_op)) return(expr)
  if (rhs_op != as.name("$<-")) return(expr)

  ## Replace `$<-` with something unique, e.g. `codetools.bugfix16:::$<-`
  rhs <- as.list(rhs)
  rhs[[1]] <- as.name("codetools.bugfix16:::$<-")
  rhs <- as.call(rhs)
  expr[[3]] <- rhs
  expr
} ## tweakCodetoolsBug16()
