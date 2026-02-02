# activAnalyzer

<details>

* Version: 2.1.2
* GitHub: https://github.com/pydemull/activAnalyzer
* Source code: https://github.com/cran/activAnalyzer
* Date/Publication: 2024-09-23 23:40:02 UTC
* Number of recursive dependencies: 145

Run `revdepcheck::revdep_details(, "activAnalyzer")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  5.7Mb
      sub-directories of 1Mb or more:
        R         1.5Mb
        doc       1.0Mb
        extdata   2.0Mb
    ```

# clustermq

<details>

* Version: 0.9.9
* GitHub: https://github.com/mschubert/clustermq
* Source code: https://github.com/cran/clustermq
* Date/Publication: 2025-04-20 13:30:02 UTC
* Number of recursive dependencies: 107

Run `revdepcheck::revdep_details(, "clustermq")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
          additional_attributes] [-h] [script]
      
      [ FAIL 2 | WARN 1 | SKIP 8 | PASS 126 ]
      
      ══ Skipped tests (8) ═══════════════════════════════════════════════════════════
      • has_ssh_cmq("127.0.0.1") is not TRUE (1): 'test-7-ssh_proxy.r:110:5'
    ...
          ▆
       1. └─clustermq::Q(fx, x = 1:3, workers = w, timeout = 10L) at test-6-queue_impl.r:76:5
       2.   └─clustermq::Q_rows(...)
       3.     └─clustermq:::master(...)
       4.       └─pool$recv(timeout)
       5.         └─private$master$recv(timeout)
      
      [ FAIL 2 | WARN 1 | SKIP 8 | PASS 126 ]
      Error: Test failures
      Execution halted
    ```

*   checking installed package size ... NOTE
    ```
      installed size is 23.4Mb
      sub-directories of 1Mb or more:
        libs  22.8Mb
    ```

*   checking dependencies in R code ... NOTE
    ```
    Namespace in Imports field not imported from: ‘R6’
      All declared Imports should be used.
    ```

# disk.frame

<details>

* Version: 0.8.3
* GitHub: https://github.com/DiskFrame/disk.frame
* Source code: https://github.com/cran/disk.frame
* Date/Publication: 2023-08-24 16:20:10 UTC
* Number of recursive dependencies: 96

Run `revdepcheck::revdep_details(, "disk.frame")` for more info

</details>

## In both

*   checking Rd files ... NOTE
    ```
    checkRd: (-1) csv_to_disk.frame.Rd:56: Lost braces; missing escapes or markup?
        56 | strings, and you are encouraged to use {fasttime} to convert the strings to
           |                                        ^
    checkRd: (-1) purrr_as_mapper.Rd:10: Lost braces; missing escapes or markup?
        10 | \item{.f}{a normal function or purrr syntax function i.e. `~{ ...code...}`}
           |                                                             ^
    ```

# furrr

<details>

* Version: 0.3.1
* GitHub: https://github.com/DavisVaughan/furrr
* Source code: https://github.com/cran/furrr
* Date/Publication: 2022-08-15 19:40:02 UTC
* Number of recursive dependencies: 68

Run `revdepcheck::revdep_details(, "furrr")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
       34. │                 │     └─base (local) tryCatchOne(expr, names, parentenv, handlers[[1L]])
       35. │                 │       └─base (local) doTryCatch(return(expr), name, parentenv, handler)
       36. │                 ├─base::tryCatch(...)
       37. │                 │ └─base (local) tryCatchList(expr, classes, parentenv, handlers)
       38. │                 ├─base::withCallingHandlers(...)
       39. │                 ├─base::withVisible(eval(expr, envir = globalenv()))
    ...
      In addition: Warning messages:
      1: In for (i in seq_len(n)) { :
        closing unused connection 4 (<-localhost:24061)
      2: In for (i in seq_len(n)) { :
        closing unused connection 5 (<-localhost:22083)
      3: In for (i in seq_len(n)) { :
        closing unused connection 8 (<-localhost:22083)
      4: In node_cdr(x) : closing unused connection 4 (<-localhost:38792)
      5: In node_cdr(x) : closing unused connection 6 (<-localhost:38792)
      Execution halted
    ```

# shinytest

<details>

* Version: 1.6.1
* GitHub: https://github.com/rstudio/shinytest
* Source code: https://github.com/cran/shinytest
* Date/Publication: 2024-05-30 19:10:02 UTC
* Number of recursive dependencies: 72

Run `revdepcheck::revdep_details(, "shinytest")` for more info

</details>

## In both

*   checking tests ...
    ```
      Running ‘testthat.R’
     ERROR
    Running the tests in ‘tests/testthat.R’ failed.
    Last 50 lines of output:
       20800K .......... .......... .......... .......... .......... 91%  103M 0s
       20850K .......... .......... .......... .......... .......... 91%  108M 0s
       20900K .......... .......... .......... .......... .......... 91% 80.4M 0s
       20950K .......... .......... .......... .......... .......... 91% 88.7M 0s
       21000K .......... .......... .......... .......... .......... 92% 95.6M 0s
       21050K .......... .......... .......... .......... .......... 92%  123M 0s
    ...
      
      2025-05-07 22:06:55 (88.6 MB/s) - ‘phantomjs-2.1.1-linux-x86_64.tar.bz2’ saved [23415665/23415665]
      
      Error in dir.create(destdir, showWarnings = FALSE) : 
        zero-length 'path' argument
      Calls: installDependencies -> <Anonymous> -> dir.create
      In addition: Warning message:
      In file.copy(exec, destdir, overwrite = TRUE) :
        problem copying phantomjs-2.1.1-linux-x86_64/bin/phantomjs to /c4/home/henrik/bin/phantomjs: Text file busy
      Execution halted
    ```

# sparklyr

<details>

* Version: 1.9.0
* GitHub: https://github.com/sparklyr/sparklyr
* Source code: https://github.com/cran/sparklyr
* Date/Publication: 2025-03-18 13:40:02 UTC
* Number of recursive dependencies: 113

Run `revdepcheck::revdep_details(, "sparklyr")` for more info

</details>

## In both

*   checking installed package size ... NOTE
    ```
      installed size is  7.2Mb
      sub-directories of 1Mb or more:
        R      3.5Mb
        help   1.5Mb
        java   1.7Mb
    ```

