library(globals)

message("*** codetools::findGlobals() bug #16 ...")

exprs <- list(
 A = quote(x %% `$<-`("abc", 42)),
 B = quote(function() x %% `$<-`("abc", 42))
)

for (name in names(exprs)) {
  expr <- exprs[[name]]
  print(expr)
  globals <- globals::findGlobals(expr)
  print(globals)
  
  diffA <- setdiff(c("%%", "x", "$<-"), globals)
  print(diffA)
  stopifnot(length(diffA) == 0)
  
  diffB <- setdiff(globals, c("%%", "x", "$<-"))
  print(diffB)
  stopifnot(length(diffB) == 0)
}

message("*** codetools::findGlobals() bug #16 ... done")


message("*** tweakCodetoolsBug16() - guard clauses ...")
tweakCodetoolsBug16 <- globals:::tweakCodetoolsBug16

## Not a call at all => returned as-is
stopifnot(identical(tweakCodetoolsBug16(quote(a)), quote(a)))

## A call, but not an infix operator => returned as-is
stopifnot(identical(tweakCodetoolsBug16(quote(a + b)), quote(a + b)))

## An infix operator whose RHS is not a call => returned as-is
stopifnot(identical(tweakCodetoolsBug16(quote(a %in% b)), quote(a %in% b)))

## An infix operator whose RHS is a call, but not to `$<-` => returned as-is
stopifnot(identical(tweakCodetoolsBug16(quote(a %in% foo(b))), quote(a %in% foo(b))))

## An infix operator whose RHS is a call whose "function" position is
## itself a call (not a symbol), e.g. `f()$g(b)` => returned as-is
e <- quote(a %in% f()$g(b))
stopifnot(identical(tweakCodetoolsBug16(e), e))

## An infix operator applied to a single argument, i.e. length(expr) == 2,
## which the author flagged as "Can this ever happen?" - it can, when the
## call is constructed programmatically
e <- quote(a %in% b)
e[[3]] <- NULL
stopifnot(identical(tweakCodetoolsBug16(e), e))

## The actual bug pattern => `$<-` is replaced
e <- tweakCodetoolsBug16(quote(x %% `$<-`("abc", 42)))
stopifnot(identical(e[[3]][[1]], as.name("codetools.bugfix16:::$<-")))
message("*** tweakCodetoolsBug16() - guard clauses ... DONE")
