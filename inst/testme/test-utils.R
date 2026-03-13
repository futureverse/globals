library(globals)

message("*** utils ...")

message("- envname() ...")

name <- envname(NULL)
print(name)
stopifnot(is.character(name), length(name) == 1L, is.na(name))

env <- new.env()
print(env)
name <- utils::capture.output(print(env))
stopifnot(is.character(name), length(name) == 1L)
name <- envname(env)
print(name)
stopifnot(is.character(name), length(name) == 1L, !is.na(name),
          class(env) == "environment")

env <- structure(new.env(), class = "foo")
print.foo <- function(x, ...) { str(as.list(letters[1:3])); invisible(x) }
print(env)
name <- utils::capture.output(print(env))
stopifnot(is.character(name), length(name) > 1L)
name <- envname(env)
print(name)
stopifnot(is.character(name), length(name) == 1L, !is.na(name),
          class(env) == "foo")

env <- structure(new.env(), handlers = "foo")
print(env)
name <- utils::capture.output(print(env))
stopifnot(is.character(name), length(name) > 1L)
name <- envname(env)
print(name)
stopifnot(is.character(name), length(name) == 1L, !is.na(name))

message("- envname() ... DONE")


message("* hpaste() ...")

printf <- function(...) cat(sprintf(...))
hpaste <- globals:::hpaste

# Some vectors
x <- 1:6
y <- 10:1
z <- LETTERS[x]

# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
# Abbreviation of output vector
# - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
printf("x = %s.\n", hpaste(x))
## x = 1, 2, 3, ..., 6.

printf("x = %s.\n", hpaste(x, max_head = 2))
## x = 1, 2, ..., 6.

printf("x = %s.\n", hpaste(x, max_head = 3)) # Default
## x = 1, 2, 3, ..., 6.

# It will never output 1, 2, 3, 4, ..., 6
printf("x = %s.\n", hpaste(x, max_head = 4))
## x = 1, 2, 3, 4, 5 and 6.

# Showing the tail
printf("x = %s.\n", hpaste(x, max_head = 1, max_tail = 2))
## x = 1, ..., 5, 6.

# Turning off abbreviation
printf("y = %s.\n", hpaste(y, max_head = Inf))
## y = 10, 9, 8, 7, 6, 5, 4, 3, 2, 1

## ...or simply
printf("y = %s.\n", paste(y, collapse = ", "))
## y = 10, 9, 8, 7, 6, 5, 4, 3, 2, 1

# Change last separator
printf("x = %s.\n", hpaste(x, last_collapse = " and "))
## x = 1, 2, 3, 4, 5 and 6.

# No collapse
stopifnot(all(hpaste(x, collapse = NULL) == x))

# Empty input
stopifnot(identical(hpaste(character(0)), character(0)))

message("* hpaste() ... DONE")


message("* as_function() ...")
fcn <- as_function({ 1 })
print(fcn())
stopifnot(fcn() == 1)


message("* is_base_pkg() ...")
base_pkgs <- c("base")
for (pkg in base_pkgs) {
  stopifnot(is_base_pkg(pkg))
}
stopifnot(!is_base_pkg("globals"))

message("* isPackageNamespace() ... Bug #80")

`$.strict_env` <- function(x, name) get(name, envir = x, inherits = FALSE)
env <- structure(new.env(), class = "strict_env")
res <- globals:::isPackageNamespace(env)
stopifnot(!res)


message("* is.base() & is_internal() ...")
stopifnot(is.base(base::library))
stopifnot(!is.base(globals::globalsOf))
stopifnot(!is.base(NULL))
stopifnot(is_internal(print.default))
stopifnot(!is_internal(globals::globalsOf))
stopifnot(!is_internal(NULL))




message("* where() ...")

env <- where("sample", where = 1L)
str(env)

env <- where("sample", frame = 1L)
str(env)

message("- where('sample') ...")
env <- where("sample", mode = "function")
print(env)
if (!"covr" %in% loadedNamespaces()) {
  stopifnot(identical(env, baseenv()))
}
obj <- get("sample", mode = "function", envir = env, inherits = FALSE)
stopifnot(identical(obj, base::sample))


message("- where('sample', mode = 'integer') ...")
env <- where("sample", mode = "integer")
print(env)
stopifnot(is.null(env))


message("- where('sample2') ...")
sample2 <- base::sample
env <- where("sample2", mode = "function")
print(env)
stopifnot(identical(env, environment()))
obj <- get("sample2", mode = "function", envir = env, inherits = FALSE)
stopifnot(identical(obj, sample2))


message("- where() - objects inside functions ...")
aa <- 1

foo <- function() {
  bb <- 2 #nolint
  list(aa = where("aa"), bb = where("bb"), cc = where("cc"),
       envir = environment())
}

envs <- foo()
str(envs)
stopifnot(identical(envs$aa, globalenv()))
stopifnot(identical(envs$bb, envs$envir))
stopifnot(is.null(envs$cc))

message("- where() - missing ...")
env <- where("non-existing-object", inherits = FALSE)
stopifnot(is.null(env))

rm(list = c("aa", "envs", "foo", "env", "obj", "where"))

message("* where() ... DONE")

message("- mdebug() ...")

mdebug("Message A")
oopts <- options(globals.debug = TRUE)
mdebug("Message B")
options(oopts)

message("- debug functions ...")
mdebugf <- globals:::mdebugf
mdebug_push <- globals:::mdebug_push
mdebug_pop <- globals:::mdebug_pop
mdebugf_push <- globals:::mdebugf_push
mdebugf_pop <- globals:::mdebugf_pop
mprint <- globals:::mprint
mstr <- globals:::mstr
debug_indent <- globals:::debug_indent

oopts <- options(globals.debug = TRUE)

mdebug_push("test push")
indent <- debug_indent()
stopifnot(nzchar(indent))
mdebug_pop("test pop")

mdebugf_push("test push %d", 1)
mdebugf_pop("test pop %d", 1)

mdebugf("hello %s", "world")
mprint(1:3)
mstr(list(a = 1, b = "x"))

options(oopts)
message("- debug functions ... DONE")

message("- where() - debug path ...")
where <- globals:::where
oopts <- options(globals.future = TRUE)
test_env_dbg <- new.env(parent = emptyenv())
test_env_dbg$my_var <- 1
env <- where("my_var", envir = test_env_dbg, inherits = FALSE)
stopifnot(identical(env, test_env_dbg))
env <- where("no_such_var", envir = test_env_dbg, inherits = FALSE)
stopifnot(is.null(env))
env <- where("no_such_var_at_all_xyz", envir = test_env_dbg, inherits = TRUE)
stopifnot(is.null(env))
options(oopts)
rm(list = c("where", "test_env_dbg"))
message("- where() - debug path ... DONE")

message("* mdebug() ... DONE")

message("* is_native_symbol_info() ...")
is_native_symbol_info <- globals:::is_native_symbol_info

stopifnot(!is_native_symbol_info(42))
stopifnot(!is_native_symbol_info(NULL))

## Object that inherits 'NativeSymbolInfo' but wrong type
mock_bad <- structure("not_a_list", class = "NativeSymbolInfo")
stopifnot(!is_native_symbol_info(mock_bad))

## Object that inherits 'NativeSymbolInfo', is a list, but lacks
## 'RegisteredNativeSymbol'
mock_bad2 <- structure(list(address = "foo"), class = "NativeSymbolInfo")
stopifnot(!is_native_symbol_info(mock_bad2))
## Proper mock
mock_ok <- structure(
  list(
    name = "test",
    address = structure(TRUE, class = "RegisteredNativeSymbol"),
    numParameters = 1L
  ),
  class = "NativeSymbolInfo"
)
stopifnot(is_native_symbol_info(mock_ok))

message("* is_native_symbol_info() ... DONE")


message("* isPackageNamespace() ...")
isPackageNamespace <- globals:::isPackageNamespace

stopifnot(!isPackageNamespace(NULL))
stopifnot(!isPackageNamespace(42))
stopifnot(isPackageNamespace(baseenv()))
stopifnot(isPackageNamespace(as.environment("package:base")))

message("* isPackageNamespace() ... DONE")


message("* stop_if_not() ...")
stop_if_not <- globals:::stop_if_not

stop_if_not()
stop_if_not(TRUE)
stop_if_not(TRUE, TRUE)
res <- tryCatch(stop_if_not(FALSE), error = identity)
stopifnot(inherits(res, "simpleError"))
res <- tryCatch(stop_if_not(NA), error = identity)
stopifnot(inherits(res, "simpleError"))
res <- tryCatch(stop_if_not(c(TRUE, TRUE)), error = identity)
stopifnot(inherits(res, "simpleError"))
res <- tryCatch(stop_if_not(identical(1:100, 2:101)), error = identity)
stopifnot(inherits(res, "simpleError"))

message("- stop_if_not() - long deparsed expression ...")
## Expression that produces multi-line deparse output (> 60 chars width)
res <- tryCatch(
  stop_if_not(
    identical(
      list(alpha = 1, beta = 2, gamma = 3, delta = 4, epsilon = 5, zeta = 6),
      list(alpha = 1, beta = 2, gamma = 3, delta = 4, epsilon = 5, zeta = 7)
    )
  ),
  error = identity
)
stopifnot(inherits(res, "simpleError"))
stopifnot(grepl("[.][.][.]", conditionMessage(res)))

message("* stop_if_not() ... DONE")


message("* .length() ...")
.length <- globals:::.length

stopifnot(.length(1:5) == 5L)
stopifnot(.length(list(a = 1, b = 2)) == 2L)
obj <- structure(1:3, class = "myclass")
stopifnot(.length(obj) == 3L)

message("* .length() ... DONE")


message("* list_apply() ...")
list_apply <- globals:::list_apply

res <- list_apply(list(1, 2, 3), FUN = function(x) x * 2)
stopifnot(identical(res, list(2, 4, 6)))
res <- list_apply(list(10, 20, 30), subset = c(1L, 3L), FUN = function(x) x + 1)
stopifnot(res[[1]] == 11, res[[3]] == 31)
env <- new.env(parent = emptyenv())
env$a <- 1
env$b <- 2
res <- list_apply(env, FUN = function(x) x * 10)
stopifnot(res[["a"]] == 10, res[["b"]] == 20)

message("* list_apply() ... DONE")


message("* stopf() ...")
stopf <- globals:::stopf
res <- tryCatch(stopf("error %d", 42), error = identity)
stopifnot(inherits(res, "simpleError"))
stopifnot(grepl("error 42", conditionMessage(res)))

message("- stopf() with call. = FALSE ...")
res <- tryCatch(stopf("error %d", 42, call. = FALSE), error = identity)
stopifnot(inherits(res, "simpleError"))
stopifnot(is.null(res$call))

message("- stopf() with call. = <call object> ...")
res <- tryCatch(stopf("error %d", 42, call. = quote(my_function(x))), error = identity)
stopifnot(inherits(res, "simpleError"))
stopifnot(identical(res$call, quote(my_function(x))))

message("* stopf() ... DONE")


message("* is_base_pkg() edge cases ...")
stopifnot(!is_base_pkg(""))
stopifnot(is_base_pkg("utils"))
stopifnot(is_base_pkg("package:base"))
message("* is_base_pkg() ... DONE")


message("* setOption() ...")
setOption <- globals:::setOption
old <- setOption("globals.test.dummy", 42)
stopifnot(is.null(old))
stopifnot(identical(getOption("globals.test.dummy"), 42))
old <- setOption("globals.test.dummy", NULL)
stopifnot(identical(old, 42))
message("* setOption() ... DONE")


message("* update_package_option() ...")
update_package_option <- globals:::update_package_option

## Option already set, force = FALSE => early return
options(globals.test.opt1 = "existing")
res <- update_package_option("globals.test.opt1", force = FALSE)
stopifnot(identical(res, "existing"))

## Env var not set (NA) => return default
options(globals.test.opt2 = NULL)
Sys.unsetenv("R_GLOBALS_TEST_OPT2")
res <- update_package_option("globals.test.opt2", default = "mydefault")
stopifnot(identical(res, "mydefault"))

## Env var set to empty string => return default
options(globals.test.opt3 = NULL)
Sys.setenv(R_GLOBALS_TEST_OPT3 = "")
res <- update_package_option("globals.test.opt3", default = "fallback")
stopifnot(identical(res, "fallback"))
Sys.unsetenv("R_GLOBALS_TEST_OPT3")

## Env var with split
options(globals.test.opt4 = NULL)
Sys.setenv(R_GLOBALS_TEST_OPT4 = "a, b, c")
res <- update_package_option("globals.test.opt4", split = ",")
stopifnot(identical(res, c("a", "b", "c")))
Sys.unsetenv("R_GLOBALS_TEST_OPT4")

## Env var with mode coercion (character -> logical)
options(globals.test.opt5 = NULL)
Sys.setenv(R_GLOBALS_TEST_OPT5 = "TRUE")
res <- update_package_option("globals.test.opt5", mode = "logical")
stopifnot(identical(res, TRUE))
Sys.unsetenv("R_GLOBALS_TEST_OPT5")

## Coercion to NA triggers disallow = "NA"
options(globals.test.opt6 = NULL)
Sys.setenv(R_GLOBALS_TEST_OPT6 = "not_a_number")
res <- tryCatch(
  update_package_option("globals.test.opt6", mode = "integer", disallow = "NA"),
  error = identity
)
stopifnot(inherits(res, "simpleError"))
Sys.unsetenv("R_GLOBALS_TEST_OPT6")

## disallow non-positive
options(globals.test.opt7 = NULL)
Sys.setenv(R_GLOBALS_TEST_OPT7 = "-1")
res <- tryCatch(
  update_package_option("globals.test.opt7", mode = "integer",
                        disallow = c("NA", "non-positive")),
  error = identity
)
stopifnot(inherits(res, "simpleError"))
Sys.unsetenv("R_GLOBALS_TEST_OPT7")

## disallow negative
options(globals.test.opt8 = NULL)
Sys.setenv(R_GLOBALS_TEST_OPT8 = "-5")
res <- tryCatch(
  update_package_option("globals.test.opt8", mode = "integer",
                        disallow = c("NA", "negative")),
  error = identity
)
stopifnot(inherits(res, "simpleError"))
Sys.unsetenv("R_GLOBALS_TEST_OPT8")

## debug = TRUE path
options(globals.test.opt9 = NULL)
oopts <- options(globals.debug = TRUE)
Sys.setenv(R_GLOBALS_TEST_OPT9 = "hello")
res <- update_package_option("globals.test.opt9", debug = TRUE)
stopifnot(identical(res, "hello"))
Sys.unsetenv("R_GLOBALS_TEST_OPT9")
options(oopts)

## debug = TRUE, env var not set
options(globals.test.opt10 = NULL)
oopts <- options(globals.debug = TRUE)
Sys.unsetenv("R_GLOBALS_TEST_OPT10")
res <- update_package_option("globals.test.opt10", debug = TRUE, default = "def")
stopifnot(identical(res, "def"))
options(oopts)

## debug = TRUE, with mode coercion
options(globals.test.opt11 = NULL)
oopts <- options(globals.debug = TRUE)
Sys.setenv(R_GLOBALS_TEST_OPT11 = "42")
res <- update_package_option("globals.test.opt11", mode = "integer", debug = TRUE)
stopifnot(identical(res, 42L))
Sys.unsetenv("R_GLOBALS_TEST_OPT11")
options(oopts)

## Clean up
options(
  globals.test.opt1 = NULL, globals.test.opt2 = NULL,
  globals.test.opt3 = NULL, globals.test.opt4 = NULL,
  globals.test.opt5 = NULL, globals.test.opt6 = NULL,
  globals.test.opt7 = NULL, globals.test.opt8 = NULL,
  globals.test.opt9 = NULL, globals.test.opt10 = NULL,
  globals.test.opt11 = NULL
)
message("* update_package_option() ... DONE")


message("*** utils ... DONE")

