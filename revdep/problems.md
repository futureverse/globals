# activAnalyzer (2.1.2)

* GitHub: <https://github.com/pydemull/activAnalyzer>
* Email: <mailto:pydemull@uco.fr>
* GitHub mirror: <https://github.com/cran/activAnalyzer>

Run `revdepcheck::revdep_details(, "activAnalyzer")` for more info

## In both

*   checking whether package ‘activAnalyzer’ can be installed ... ERROR
     ```
     Installation failed.
     See ‘/scratch/hb/revdepcheck.extras/globals/revdep/checks/activAnalyzer/new/activAnalyzer.Rcheck/00install.out’ for details.
     ```

## Installation

### Devel

```
* installing *source* package ‘activAnalyzer’ ...
** this is package ‘activAnalyzer’ version ‘2.1.2’
** package ‘activAnalyzer’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
*** copying figures
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
ERROR: hard-coded installation path: please report to the package maintainer and use ‘--no-staged-install’
* removing ‘/scratch/hb/revdepcheck.extras/globals/revdep/checks/activAnalyzer/new/activAnalyzer.Rcheck/activAnalyzer’


```
### CRAN

```
* installing *source* package ‘activAnalyzer’ ...
** this is package ‘activAnalyzer’ version ‘2.1.2’
** package ‘activAnalyzer’ successfully unpacked and MD5 sums checked
** using staged installation
** R
** inst
** byte-compile and prepare package for lazy loading
** help
*** installing help indices
*** copying figures
** building package indices
** installing vignettes
** testing if installed package can be loaded from temporary location
** testing if installed package can be loaded from final location
** testing if installed package keeps a record of temporary installation path
ERROR: hard-coded installation path: please report to the package maintainer and use ‘--no-staged-install’
* removing ‘/scratch/hb/revdepcheck.extras/globals/revdep/checks/activAnalyzer/old/activAnalyzer.Rcheck/activAnalyzer’


```
# clustermq (0.10.1)

* GitHub: <https://github.com/mschubert/clustermq>
* Email: <mailto:mschu.dev@gmail.com>
* GitHub mirror: <https://github.com/cran/clustermq>

Run `revdepcheck::revdep_details(, "clustermq")` for more info

## In both

*   checking compiled code ... WARNING
     ```
     File ‘clustermq/libs/clustermq.so’:
       Found ‘abort’, possibly from ‘abort’ (C)
         Object: ‘libzmq/src/.libs/libzmq.a’
       Found ‘rand’, possibly from ‘rand’ (C)
         Object: ‘libzmq/src/.libs/libzmq.a’
       Found ‘srand’, possibly from ‘srand’ (C)
         Object: ‘libzmq/src/.libs/libzmq.a’
       Found ‘stderr’, possibly from ‘stderr’ (C)
         Object: ‘libzmq/src/.libs/libzmq.a’
     
     Compiled code should not call entry points which might terminate R nor
     write to stdout/stderr instead of to the console, nor use Fortran I/O
     nor system RNGs nor [v]sprintf.
     
     See ‘Writing portable packages’ in the ‘Writing R Extensions’ manual.
     ```

*   checking dependencies in R code ... NOTE
     ```
     Namespace in Imports field not imported from: ‘R6’
       All declared Imports should be used.
     ```

# future.batchtools (0.22.0)

* GitHub: <https://github.com/futureverse/future.batchtools>
* Email: <mailto:henrikb@braju.com>
* GitHub mirror: <https://github.com/cran/future.batchtools>

Run `revdepcheck::revdep_details(, "future.batchtools")` for more info

## In both

*   checking for non-standard things in the check directory ... NOTE
     ```
     Found the following files/directories:
       ‘.future-set-during-startup’
     ```

