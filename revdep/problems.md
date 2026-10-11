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
# additive (1.0.1)

* GitHub: <https://github.com/hsbadr/additive>
* Email: <mailto:badr@jhu.edu>
* GitHub mirror: <https://github.com/cran/additive>

Run `revdepcheck::revdep_details(, "additive")` for more info

## In both

*   checking S3 generic/method consistency ... NOTE
     ```
     Mismatches for apparent methods not registered:
     check_args:
       function(object, call)
     check_args.additive:
       function(object)
     See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
     manual.
     ```

# adestr (1.0.0)

* Email: <mailto:meis@imbi.uni-heidelberg.de>
* GitHub mirror: <https://github.com/cran/adestr>

Run `revdepcheck::revdep_details(, "adestr")` for more info

## In both

*   checking DESCRIPTION meta-information ... NOTE
     ```
       Missing dependency on R >= 4.1.0 because package code uses the pipe
       |> or function shorthand \(...) syntax added in R 4.1.0.
       File(s) using such syntax:
         ‘IntervalEstimator-class.Rd’ ‘PValue-class.Rd’
         ‘PointEstimator-class.Rd’ ‘analyze.R’ ‘estimators.R’
         ‘evaluate_estimator.R’ ‘fisher_information.R’
         ‘integrate_over_sample_space.R’ ‘mle_distribution.R’ ‘n2c2_helpers.R’
         ‘plot.R’ ‘print.R’ ‘reference_implementation.R’
     ```

# altdoc (0.7.3)

* GitHub: <https://github.com/etiennebacher/altdoc>
* Email: <mailto:etienne.bacher@protonmail.com>
* GitHub mirror: <https://github.com/cran/altdoc>

Run `revdepcheck::revdep_details(, "altdoc")` for more info

## In both

*   checking for non-standard things in the check directory ... NOTE
     ```
     Found the following files/directories:
       ‘testpkg1505fed3a10d5’
     ```

# autostats (0.4.2)

* GitHub: <https://github.com/Harrison4192/autostats>
* Email: <mailto:harrison4192@gmail.com>
* GitHub mirror: <https://github.com/cran/autostats>

Run `revdepcheck::revdep_details(, "autostats")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     Namespaces in Imports field not imported from:
       ‘Ckmeans.1d.dp’ ‘broom.mixed’ ‘data.table’ ‘igraph’
       All declared Imports should be used.
     ```

# baskexact (1.0.1)

* GitHub: <https://github.com/lbau7/baskexact>
* Email: <mailto:baumann@imbi.uni-heidelberg.de>
* GitHub mirror: <https://github.com/cran/baskexact>

Run `revdepcheck::revdep_details(, "baskexact")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     Namespace in Imports field not imported from: ‘ggplot2’
       All declared Imports should be used.
     ```

# batchtools (0.9.18)

* GitHub: <https://github.com/mlr-org/batchtools>
* Email: <mailto:michellang@gmail.com>
* GitHub mirror: <https://github.com/cran/batchtools>

Run `revdepcheck::revdep_details(, "batchtools")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     ...
     dev3.wynton.ucsf.edu:pid1442689.R: Unable to initialize verbs NIC /sys/class/infiniband/mlx5_0 (unit 0:0)
     dev3.wynton.ucsf.edu:pid1442689: PSM3 can't open nic unit: 0 (err=23)
     dev3.wynton.ucsf.edu:pid1442689.R: Unable to create send CQ of size 5080 on mlx5_0: Cannot allocate memory
     dev3.wynton.ucsf.edu:pid1442689.R: Unable to initialize verbs NIC /sys/class/infiniband/mlx5_0 (unit 0:0)
     --------------------------------------------------------------------------
     No OpenFabrics connection schemes reported that they were able to be
     used on a specific port.  As such, the openib BTL (OpenFabrics
     support) will be disabled for this port.
     
       Local host:           dev3
       Local device:         mlx5_0
       Local port:           1
       CPCs attempted:       rdmacm, udcm
     --------------------------------------------------------------------------
     dev3.wynton.ucsf.edu:pid1442689: PSM3 can't open nic unit: 0 (err=23)
     dev3.wynton.ucsf.edu:pid1442689.R: Unable to create send CQ of size 5080 on mlx5_0: Cannot allocate memory
     dev3.wynton.ucsf.edu:pid1442689.R: Unable to initialize verbs NIC /sys/class/infiniband/mlx5_0 (unit 0:0)
     --------------------------------------------------------------------------
     Open MPI failed an OFI Libfabric library call (fi_endpoint).  This is highly
     unusual; your job may behave unpredictably (and/or abort) after this.
     
       Local host: dev3
       Location: mtl_ofi_component.c:513
       Error: Invalid argument (22)
     --------------------------------------------------------------------------
     ```

*   checking for detritus in the temp directory ... NOTE
     ```
     Found the following files/directories:
       ‘ompi.dev3.34002’
     ```

# bayesian (1.0.1)

* GitHub: <https://github.com/hsbadr/bayesian>
* Email: <mailto:badr@jhu.edu>
* GitHub mirror: <https://github.com/cran/bayesian>

Run `revdepcheck::revdep_details(, "bayesian")` for more info

## In both

*   checking S3 generic/method consistency ... NOTE
     ```
     Mismatches for apparent methods not registered:
     check_args:
       function(object, call)
     check_args.bayesian:
       function(object)
     See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
     manual.
     ```

# BPrinStratTTE (0.0.7)

* GitHub: <https://github.com/Boehringer-Ingelheim/BPrinStratTTE>
* Email: <mailto:christian.stock@boehringer-ingelheim.com>
* GitHub mirror: <https://github.com/cran/BPrinStratTTE>

Run `revdepcheck::revdep_details(, "BPrinStratTTE")` for more info

## In both

*   checking DESCRIPTION meta-information ... NOTE
     ```
       Missing dependency on R >= 4.1.0 because package code uses the pipe
       |> or function shorthand \(...) syntax added in R 4.1.0.
       File(s) using such syntax:
         ‘sim_dat_one_trial_exp_covar.R’ ‘sim_dat_one_trial_exp_nocovar.R’
     ```

# card (0.1.1)

* GitHub: <https://github.com/shah-in-boots/card>
* Email: <mailto:shah.in.boots@gmail.com>
* GitHub mirror: <https://github.com/cran/card>

Run `revdepcheck::revdep_details(, "card")` for more info

## In both

*   checking DESCRIPTION meta-information ... NOTE
     ```
       Missing dependency on R >= 4.2.0 because package code uses the pipe
       placeholder syntax added in R 4.2.0.
       File(s) using such syntax:
         ‘cosinor-constructor.R’
     ```

# ceRNAnetsim (1.24.0)

* GitHub: <https://github.com/selcenari/ceRNAnetsim>
* Email: <mailto:selcenarii@gmail.com>

Run `revdepcheck::revdep_details(, "ceRNAnetsim")` for more info

## In both

*   checking R code for possible problems ... NOTE
     ```
     find_node_perturbation: no visible binding for global variable
       ‘perturbation_efficiency’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/ceRNAnetsim/new/ceRNAnetsim.Rcheck/00_pkg_src/ceRNAnetsim/R/find_node_perturbation.R:80-85)
     find_node_perturbation: no visible binding for global variable
       ‘perturbed_count’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/ceRNAnetsim/new/ceRNAnetsim.Rcheck/00_pkg_src/ceRNAnetsim/R/find_node_perturbation.R:80-85)
     simulate: no visible binding for global variable ‘avg_count_current’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/ceRNAnetsim/new/ceRNAnetsim.Rcheck/00_pkg_src/ceRNAnetsim/R/simulate.R:53-78)
     simulate: no visible binding for global variable ‘avg_count_pre’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/ceRNAnetsim/new/ceRNAnetsim.Rcheck/00_pkg_src/ceRNAnetsim/R/simulate.R:53-78)
     simulate: no visible binding for global variable ‘avg_count_current’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/ceRNAnetsim/new/ceRNAnetsim.Rcheck/00_pkg_src/ceRNAnetsim/R/simulate.R:80)
     simulate: no visible binding for global variable ‘avg_count_pre’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/ceRNAnetsim/new/ceRNAnetsim.Rcheck/00_pkg_src/ceRNAnetsim/R/simulate.R:80)
     simulate: no visible binding for global variable ‘avg_count_current’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/ceRNAnetsim/new/ceRNAnetsim.Rcheck/00_pkg_src/ceRNAnetsim/R/simulate.R:86-110)
     simulate: no visible binding for global variable ‘avg_count_pre’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/ceRNAnetsim/new/ceRNAnetsim.Rcheck/00_pkg_src/ceRNAnetsim/R/simulate.R:86-110)
     simulate: no visible binding for global variable ‘avg_count_current’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/ceRNAnetsim/new/ceRNAnetsim.Rcheck/00_pkg_src/ceRNAnetsim/R/simulate.R:112)
     simulate: no visible binding for global variable ‘avg_count_pre’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/ceRNAnetsim/new/ceRNAnetsim.Rcheck/00_pkg_src/ceRNAnetsim/R/simulate.R:112)
     Undefined global functions or variables:
       avg_count_current avg_count_pre perturbation_efficiency
       perturbed_count
     ```

# chevreulShiny (1.4.0)

* GitHub: <https://github.com/cobriniklab/chevreulShiny>
* Email: <mailto:kevin.stachelek@gmail.com>

Run `revdepcheck::revdep_details(, "chevreulShiny")` for more info

## In both

*   checking DESCRIPTION meta-information ... NOTE
     ```
     License stub is invalid DCF.
     ```

# ChromSCape (1.22.0)

* GitHub: <https://github.com/vallotlab/ChromSCape>
* Email: <mailto:pacome.pr@gmail.com>

Run `revdepcheck::revdep_details(, "ChromSCape")` for more info

## In both

*   checking for hidden files and directories ... NOTE
     ```
     Found the following hidden files and directories:
       .BBSoptions
     These were most likely included in error. See section ‘Package
     structure’ in the ‘Writing R Extensions’ manual.
     ```

*   checking R code for possible problems ... NOTE
     ```
     ...
     plot_top_TF_scExp: no visible binding for global variable ‘TF’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/ChromSCape/new/ChromSCape.Rcheck/00_pkg_src/ChromSCape/R/plotting_functions.R:1212-1215)
     plot_top_TF_scExp: no visible binding for global variable ‘TF’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/ChromSCape/new/ChromSCape.Rcheck/00_pkg_src/ChromSCape/R/plotting_functions.R:1216-1222)
     plot_top_TF_scExp: no visible binding for global variable ‘TF’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/ChromSCape/new/ChromSCape.Rcheck/00_pkg_src/ChromSCape/R/plotting_functions.R:1225-1228)
     plot_top_TF_scExp: no visible binding for global variable ‘TF’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/ChromSCape/new/ChromSCape.Rcheck/00_pkg_src/ChromSCape/R/plotting_functions.R:1229-1235)
     rebin_helper: no visible binding for global variable ‘new_row’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/ChromSCape/new/ChromSCape.Rcheck/00_pkg_src/ChromSCape/R/preprocessing_filtering_reduction.R:869-870)
     rebin_helper: no visible binding for global variable ‘origin_value’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/ChromSCape/new/ChromSCape.Rcheck/00_pkg_src/ChromSCape/R/preprocessing_filtering_reduction.R:869-870)
     rebin_matrix: no visible binding for global variable ‘group’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/ChromSCape/new/ChromSCape.Rcheck/00_pkg_src/ChromSCape/R/preprocessing_filtering_reduction.R:1007)
     subset_bam_call_peaks: no visible binding for global variable
       ‘merged_bam’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/ChromSCape/new/ChromSCape.Rcheck/00_pkg_src/ChromSCape/R/peak_calling.R:118-119)
     Undefined global functions or variables:
       CheA3_TF_nTargets Component Fri_cyto Gain_or_Loss Gene TF V1 V2
       absolute_value cluster clusterConsensus cytoBand files_dir_list genes
       group head k merged_bam molecule ncells new_row orientation
       origin_value percent_active run_tsne sample_id total_counts
     Consider adding
       importFrom("utils", "head")
     to your NAMESPACE file.
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

# condvis2 (0.1.2)

* GitHub: <https://github.com/cbhurley/condvis2>
* Email: <mailto:catherine.hurley@mu.ie>
* GitHub mirror: <https://github.com/cran/condvis2>

Run `revdepcheck::revdep_details(, "condvis2")` for more info

## In both

*   checking S3 generic/method consistency ... NOTE
     ```
     Apparent methods for exported generics not registered:
       pathInterpolate.character
     See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
     manual.
     ```

# conformalInference.fd (1.1.1)

* GitHub: <https://github.com/ryantibs/conformal>
* Email: <mailto:paolo.vergottini@gmail.com>
* GitHub mirror: <https://github.com/cran/conformalInference.fd>

Run `revdepcheck::revdep_details(, "conformalInference.fd")` for more info

## In both

*   checking S3 generic/method consistency ... NOTE
     ```
     Mismatches for apparent methods not registered:
     max:
       function(..., na.rm)
     max.lol:
       function(l)
     
     min:
       function(..., na.rm)
     min.lol:
       function(l)
     See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
     manual.
     ```

# ConfusionTableR (1.0.4)

* Email: <mailto:hutsons-hacks@outlook.com>
* GitHub mirror: <https://github.com/cran/ConfusionTableR>

Run `revdepcheck::revdep_details(, "ConfusionTableR")` for more info

## In both

*   checking Rd files ... NOTE
     ```
     checkRd: (-1) binary_class_cm.Rd:19: Lost braces in \itemize; \value handles \item{}{} directly
     checkRd: (-1) binary_class_cm.Rd:20: Lost braces in \itemize; \value handles \item{}{} directly
     checkRd: (-1) binary_class_cm.Rd:21: Lost braces in \itemize; \value handles \item{}{} directly
     checkRd: (-1) binary_class_cm.Rd:22: Lost braces in \itemize; \value handles \item{}{} directly
     checkRd: (-1) multi_class_cm.Rd:19: Lost braces in \itemize; \value handles \item{}{} directly
     checkRd: (-1) multi_class_cm.Rd:20: Lost braces in \itemize; \value handles \item{}{} directly
     checkRd: (-1) multi_class_cm.Rd:21: Lost braces in \itemize; \value handles \item{}{} directly
     checkRd: (-1) multi_class_cm.Rd:22: Lost braces in \itemize; \value handles \item{}{} directly
     ```

# corporaexplorer (0.9.0)

* GitHub: <https://github.com/kgjerde/corporaexplorer>
* Email: <mailto:kristian.gjerde@gmail.com>
* GitHub mirror: <https://github.com/cran/corporaexplorer>

Run `revdepcheck::revdep_details(, "corporaexplorer")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     Namespaces in Imports field not imported from:
       ‘RColorBrewer’ ‘ggplot2’ ‘re2’ ‘rmarkdown’ ‘shinyWidgets’
       ‘shinydashboard’ ‘shinyjs’
       All declared Imports should be used.
     ```

# CrcBiomeScreen (1.0.0)

* GitHub: <https://github.com/omicsForestry/CrcBiomeScreen>
* Email: <mailto:ngzh5554@leeds.ac.uk>

Run `revdepcheck::revdep_details(, "CrcBiomeScreen")` for more info

## In both

*   checking for non-standard things in the check directory ... NOTE
     ```
     Found the following files/directories:
       ‘roc.curve.rf.RF_TSS_toydata_Validation.pdf’
     ```

# cSEM (0.7.1)

* GitHub: <https://github.com/FloSchuberth/cSEM>
* Email: <mailto:f.schuberth@utwente.nl>
* GitHub mirror: <https://github.com/cran/cSEM>

Run `revdepcheck::revdep_details(, "cSEM")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     Namespace in Imports field not imported from: ‘Rdpack’
       All declared Imports should be used.
     ```

# datacaged (0.2.1)

* GitHub: <https://github.com/gecomt/datacaged>
* Email: <mailto:alexsandro.prado@ufersa.edu.br>
* GitHub mirror: <https://github.com/cran/datacaged>

Run `revdepcheck::revdep_details(, "datacaged")` for more info

## In both

*   checking tests ...
     ```
     ...
        3. └─datacaged::caged_load(...)
        4.   └─datacaged::caged_info(db_path) at datacaged/R/database.R:418:3
        5.     └─datacaged::caged_connect(db_path, read_only = TRUE, quiet = TRUE) at datacaged/R/database.R:205:3
        6.       └─duckdb::duckdb(dbdir = db_path, read_only = read_only) at datacaged/R/database.R:34:3
        7.         └─duckdb:::warn_instance_settings_ignored(...)
        8.           └─rlang::abort(...)
       ── Error ('test-pipelines.R:216:3'): caged_adjustments_load() cria banco com tabela caged_ajustes ──
       Error in `duckdb::duckdb(dbdir = db_path, read_only = read_only)`: `read_only` can't be applied to the database instance for `/scratch/hb/RtmpN9Kht7/working_dir/Rtmpvvoan6/caged_adj_mock_14929f2b90cee2.duckdb`, which already exists.
       * These settings take effect only when the instance is created.
       * Release it with `duckdb_shutdown()` first, or pass them to the `duckdb()` call that creates it.
       Backtrace:
           ▆
        1. ├─base::suppressMessages(...) at test-pipelines.R:216:3
        2. │ └─base::withCallingHandlers(...)
        3. └─datacaged::caged_adjustments_load(...)
        4.   └─datacaged::caged_info(db_path) at datacaged/R/adjustments.R:176:3
        5.     └─datacaged::caged_connect(db_path, read_only = TRUE, quiet = TRUE) at datacaged/R/database.R:205:3
        6.       └─duckdb::duckdb(dbdir = db_path, read_only = read_only) at datacaged/R/database.R:34:3
        7.         └─duckdb:::warn_instance_settings_ignored(...)
        8.           └─rlang::abort(...)
       
       [ FAIL 2 | WARN 0 | SKIP 5 | PASS 187 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# demulticoder (0.1.2)

* GitHub: <https://github.com/grunwaldlab/demulticoder>
* Email: <mailto:sudermam@oregonstate.edu>
* GitHub mirror: <https://github.com/cran/demulticoder>

Run `revdepcheck::revdep_details(, "demulticoder")` for more info

## In both

*   checking tests ...
     ```
     ...
           ▆
        1. └─demulticoder::cut_trim(...) at test_cut_trim.R:5:5
        2.   └─demulticoder:::run_cutadapt(...) at demulticoder/R/cut_primers_trim_reads.R:540:9
        3.     ├─base::tryCatch(...) at demulticoder/R/cut_primers_trim_reads.R:30:3
        4.     │ └─base (local) tryCatchList(expr, classes, parentenv, handlers)
        5.     │   └─base (local) tryCatchOne(expr, names, parentenv, handlers[[1L]])
        6.     │     └─base (local) doTryCatch(return(expr), name, parentenv, handler)
        7.     └─base::system2(cutadapt, args = "--version", stdout = TRUE, stderr = TRUE) at demulticoder/R/cut_primers_trim_reads.R:31:5
       ── Error ('test_make_matrix.R:5:5'): make_asv_abund_matrix works correctly ─────
       <cmdError/error/condition>
       Error in `system2(cutadapt, args = "--version", stdout = TRUE, stderr = TRUE)`: error in running command
       Backtrace:
           ▆
        1. └─demulticoder::cut_trim(...) at test_make_matrix.R:5:5
        2.   └─demulticoder:::run_cutadapt(...) at demulticoder/R/cut_primers_trim_reads.R:540:9
        3.     ├─base::tryCatch(...) at demulticoder/R/cut_primers_trim_reads.R:30:3
        4.     │ └─base (local) tryCatchList(expr, classes, parentenv, handlers)
        5.     │   └─base (local) tryCatchOne(expr, names, parentenv, handlers[[1L]])
        6.     │     └─base (local) doTryCatch(return(expr), name, parentenv, handler)
        7.     └─base::system2(cutadapt, args = "--version", stdout = TRUE, stderr = TRUE) at demulticoder/R/cut_primers_trim_reads.R:31:5
       
       [ FAIL 4 | WARN 0 | SKIP 0 | PASS 2 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# designer (0.3.0)

* GitHub: <https://github.com/ashbaldry/designer>
* Email: <mailto:arbaldry91@gmail.com>
* GitHub mirror: <https://github.com/cran/designer>

Run `revdepcheck::revdep_details(, "designer")` for more info

## In both

*   checking DESCRIPTION meta-information ... NOTE
     ```
       Missing dependency on R >= 4.1.0 because package code uses the pipe
       |> or function shorthand \(...) syntax added in R 4.1.0.
       File(s) using such syntax:
         ‘mod_template_srv.R’
     ```

# envi (1.0.1)

* GitHub: <https://github.com/lance-waller-lab/envi>
* Email: <mailto:ian.buller@alumni.emory.edu>
* GitHub mirror: <https://github.com/cran/envi>

Run `revdepcheck::revdep_details(, "envi")` for more info

## In both

*   checking whether package ‘envi’ can be installed ... WARNING
     ```
     Found the following significant warnings:
       Warning: no DISPLAY variable so Tk is not available
     See ‘/scratch/hb/revdepcheck.extras/globals/revdep/checks/envi/new/envi.Rcheck/00install.out’ for details.
     ```

# flowGraph (1.20.0)

* GitHub: <https://github.com/aya49/flowGraph>
* Email: <mailto:aya43@sfu.ca>

Run `revdepcheck::revdep_details(, "flowGraph")` for more info

## In both

*   checking R code for possible problems ... NOTE
     ```
     get_child: no visible binding for global variable ‘no_cores’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/flowGraph/new/flowGraph.Rcheck/00_pkg_src/flowGraph/R/00_flowGraphSubset_constructor.R:181-187)
     get_paren: no visible binding for global variable ‘no_cores’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/flowGraph/new/flowGraph.Rcheck/00_pkg_src/flowGraph/R/00_flowGraphSubset_constructor.R:222-229)
     ms_psig: no visible binding for global variable ‘meta’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/flowGraph/new/flowGraph.Rcheck/00_pkg_src/flowGraph/R/00_flowGraphSubset_constructor.R:296)
     Undefined global functions or variables:
       meta no_cores
     ```

*   checking Rd files ... NOTE
     ```
     checkRd: (-1) fg_get_graph.Rd:13: Lost braces
         13 | A list containing two data frames (\code{v} and ]code{e})
            |                                                      ^
     checkRd: (-1) ggdf.Rd:22: Lost braces
         22 | code{ggdf} adds to the data frames \code{v} and \code{e} in slot
            |     ^
     ```

*   checking for non-standard things in the check directory ... NOTE
     ```
     Found the following files/directories:
       ‘temp’ ‘tmp’
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

# geospark (0.3.1)

* GitHub: <https://github.com/harryprince/geospark>
* Email: <mailto:7harryprince@gmail.com>
* GitHub mirror: <https://github.com/cran/geospark>

Run `revdepcheck::revdep_details(, "geospark")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     Namespace in Imports field not imported from: ‘dbplyr’
       All declared Imports should be used.
     ```

# googleTagManageR (0.2.0)

* Email: <mailto:r@jamescottrill.co.uk>
* GitHub mirror: <https://github.com/cran/googleTagManageR>

Run `revdepcheck::revdep_details(, "googleTagManageR")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     Namespaces in Imports field not imported from:
       ‘assertthat’ ‘future’ ‘httr’
       All declared Imports should be used.
     ```

# gptstudio (0.4.0)

* GitHub: <https://github.com/MichelNivard/gptstudio>
* Email: <mailto:github@jameshwade.com>
* GitHub mirror: <https://github.com/cran/gptstudio>

Run `revdepcheck::revdep_details(, "gptstudio")` for more info

## In both

*   checking DESCRIPTION meta-information ... NOTE
     ```
       Missing dependency on R >= 4.1.0 because package code uses the pipe
       |> or function shorthand \(...) syntax added in R 4.1.0.
       File(s) using such syntax:
         ‘service-cohere.R’
     ```

# grapesAgri1 (1.1.0)

* GitHub: <https://github.com/pratheesh3780/grapesAgri1>
* Email: <mailto:grapescoa@gmail.com>
* GitHub mirror: <https://github.com/cran/grapesAgri1>

Run `revdepcheck::revdep_details(, "grapesAgri1")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     Namespaces in Imports field not imported from:
       ‘Hmisc’ ‘PairedData’ ‘RColorBrewer’ ‘agricolae’ ‘corrplot’ ‘desplot’
       ‘dplyr’ ‘ggplot2’ ‘ggpubr’ ‘gridGraphics’ ‘gtools’ ‘kableExtra’
       ‘knitr’ ‘magrittr’ ‘pastecs’ ‘reshape2’ ‘rmarkdown’ ‘shinyWidgets’
       ‘summarytools’
       All declared Imports should be used.
     ```

# hero (0.6)

* Email: <mailto:joshua.french@ucdenver.edu>
* GitHub mirror: <https://github.com/cran/hero>

Run `revdepcheck::revdep_details(, "hero")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     ...
     dev3.wynton.ucsf.edu:pid218664.R: Unable to initialize verbs NIC /sys/class/infiniband/mlx5_0 (unit 0:0)
     dev3.wynton.ucsf.edu:pid218664: PSM3 can't open nic unit: 0 (err=23)
     dev3.wynton.ucsf.edu:pid218664.R: Unable to create send CQ of size 5080 on mlx5_0: Cannot allocate memory
     dev3.wynton.ucsf.edu:pid218664.R: Unable to initialize verbs NIC /sys/class/infiniband/mlx5_0 (unit 0:0)
     --------------------------------------------------------------------------
     No OpenFabrics connection schemes reported that they were able to be
     used on a specific port.  As such, the openib BTL (OpenFabrics
     support) will be disabled for this port.
     
       Local host:           dev3
       Local device:         mlx5_0
       Local port:           1
       CPCs attempted:       rdmacm, udcm
     --------------------------------------------------------------------------
     dev3.wynton.ucsf.edu:pid218664: PSM3 can't open nic unit: 0 (err=23)
     dev3.wynton.ucsf.edu:pid218664.R: Unable to create send CQ of size 5080 on mlx5_0: Cannot allocate memory
     dev3.wynton.ucsf.edu:pid218664.R: Unable to initialize verbs NIC /sys/class/infiniband/mlx5_0 (unit 0:0)
     --------------------------------------------------------------------------
     Open MPI failed an OFI Libfabric library call (fi_endpoint).  This is highly
     unusual; your job may behave unpredictably (and/or abort) after this.
     
       Local host: dev3
       Location: mtl_ofi_component.c:513
       Error: Invalid argument (22)
     --------------------------------------------------------------------------
     ```

*   checking Rd files ... NOTE
     ```
     checkRd: (-1) hero.Rd:67-68: Lost braces
         67 | then \code{\link[pbapply]{pblapply}} is used. If code{package ==
            |                                                      ^
     checkRd: (-1) hero.Rd:69: Lost braces
         69 | code{package == "Rmpi"}, then \code{\link[Rmpi]{mpi.applyLB}} is used.}
            |     ^
     ```

*   checking for detritus in the temp directory ... NOTE
     ```
     Found the following files/directories:
       ‘ompi.dev3.34002’
     ```

# infer (1.1.0)

* GitHub: <https://github.com/tidymodels/infer>
* Email: <mailto:simon.couch@posit.co>
* GitHub mirror: <https://github.com/cran/infer>

Run `revdepcheck::revdep_details(, "infer")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     Namespace in Imports field not imported from: ‘withr’
       All declared Imports should be used.
     ```

# infercnv (1.28.0)

* GitHub: <https://github.com/broadinstitute/inferCNV>
* Email: <mailto:cgeorges@broadinstitute.org>

Run `revdepcheck::revdep_details(, "infercnv")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     Unexported object imported by a ':::' call: ‘HiddenMarkov:::makedensity’
       See the note in ?`:::` about the use of this operator.
     ```

*   checking Rd files ... NOTE
     ```
     checkRd: (-1) run.Rd:268: Lost braces; missing escapes or markup?
        268 | \item{require_DE_all_normals}{If mask_nonDE_genes is set, those genes will be masked only if they are are found as DE according to test.use and mask_nonDE_pval in each of the comparisons to normal cells options: {"any", "most", "all"} (default: "any")
            |                                                                                                                                                                                                                     ^
     ```

# ivmte (1.4.0)

* Email: <mailto:jkcshea@uchicago.edu>
* GitHub mirror: <https://github.com/cran/ivmte>

Run `revdepcheck::revdep_details(, "ivmte")` for more info

## In both

*   checking Rd files ... NOTE
     ```
     checkRd: (-1) sTsls.Rd:17: Lost braces; missing escapes or markup?
         17 | \item{pi}{the matrix E[XZ']E[ZZ']^{-1}}
            |                                   ^
     checkRd: (-1) sTslsSplines.Rd:20: Lost braces; missing escapes or markup?
         20 | \item{pi}{matrix, corresponds to E[XZ']E[ZZ']^{-1}, the first stage
            |                                               ^
     ```

# kappaGold (0.4.0)

* Email: <mailto:matthias.kuhn@tu-dresden.de>
* GitHub mirror: <https://github.com/cran/kappaGold>

Run `revdepcheck::revdep_details(, "kappaGold")` for more info

## In both

*   checking DESCRIPTION meta-information ... NOTE
     ```
       Missing dependency on R >= 4.1.0 because package code uses the pipe
       |> or function shorthand \(...) syntax added in R 4.1.0.
       File(s) using such syntax:
         ‘kappa_inference.R’
     ```

# MAI (1.18.0)

* GitHub: <https://github.com/KechrisLab/MAI>
* Email: <mailto:Jonathan.Dekermanjian@CUAnschutz.edu>

Run `revdepcheck::revdep_details(, "MAI")` for more info

## In both

*   checking top-level files ... NOTE
     ```
     File
       LICENSE
     is not mentioned in the DESCRIPTION file.
     ```

# marcxmlr (0.3.1)

* GitHub: <https://github.com/larry77/marcxmlr>
* Email: <mailto:lorenzo.isella@gmail.com>
* GitHub mirror: <https://github.com/cran/marcxmlr>

Run `revdepcheck::revdep_details(, "marcxmlr")` for more info

## In both

*   checking whether package ‘marcxmlr’ can be installed ... ERROR
     ```
     Installation failed.
     See ‘/scratch/hb/revdepcheck.extras/globals/revdep/checks/marcxmlr/new/marcxmlr.Rcheck/00install.out’ for details.
     ```

## Installation

### Devel

```
* installing *source* package ‘marcxmlr’ ...
** this is package ‘marcxmlr’ version ‘0.3.1’
** package ‘marcxmlr’ successfully unpacked and MD5 sums checked
** using staged installation
Using PKG_CFLAGS=-I/usr/include/libxml2
Using PKG_LIBS=-lxml2 -lz -llzma -lm -ldl
** libs
using C compiler: ‘gcc (GCC) 13.3.1 20240611 (Red Hat 13.3.1-2)’
gcc -std=gnu2x -I"/wynton/home/cbi/shared/software/CBI/_rocky8/R-4.6.1-gcc13/lib64/R/include" -DNDEBUG -I/usr/include/libxml2  -I/usr/local/include    -fpic  -g -O2  -c marcxml-native.c -o marcxml-native.o
marcxml-native.c:72:23: error: conflicting types for ‘attribute’; have ‘const xmlChar *(xmlNode *, const char *)’ {aka ‘const unsigned char *(struct _xmlNode *, const char *)’}
...
In file included from /usr/include/libxml2/libxml/globals.h:20,
                 from /usr/include/libxml2/libxml/xmlIO.h:117,
                 from /usr/include/libxml2/libxml/parser.h:811,
                 from marcxml-native.c:5:
/usr/include/libxml2/libxml/SAX.h:104:17: note: previous declaration of ‘attribute’ with type ‘void(void *, const xmlChar *, const xmlChar *)’ {aka ‘void(void *, const unsigned char *, const unsigned char *)’}
  104 |                 attribute                       (void *ctx,
      |                 ^~~~~~~~~
make: *** [/wynton/home/cbi/shared/software/CBI/_rocky8/R-4.6.1-gcc13/lib64/R/etc/Makeconf:190: marcxml-native.o] Error 1
ERROR: compilation failed for package ‘marcxmlr’
* removing ‘/scratch/hb/revdepcheck.extras/globals/revdep/checks/marcxmlr/new/marcxmlr.Rcheck/marcxmlr’


```
### CRAN

```
* installing *source* package ‘marcxmlr’ ...
** this is package ‘marcxmlr’ version ‘0.3.1’
** package ‘marcxmlr’ successfully unpacked and MD5 sums checked
** using staged installation
Using PKG_CFLAGS=-I/usr/include/libxml2
Using PKG_LIBS=-lxml2 -lz -llzma -lm -ldl
** libs
using C compiler: ‘gcc (GCC) 13.3.1 20240611 (Red Hat 13.3.1-2)’
gcc -std=gnu2x -I"/wynton/home/cbi/shared/software/CBI/_rocky8/R-4.6.1-gcc13/lib64/R/include" -DNDEBUG -I/usr/include/libxml2  -I/usr/local/include    -fpic  -g -O2  -c marcxml-native.c -o marcxml-native.o
marcxml-native.c:72:23: error: conflicting types for ‘attribute’; have ‘const xmlChar *(xmlNode *, const char *)’ {aka ‘const unsigned char *(struct _xmlNode *, const char *)’}
...
In file included from /usr/include/libxml2/libxml/globals.h:20,
                 from /usr/include/libxml2/libxml/xmlIO.h:117,
                 from /usr/include/libxml2/libxml/parser.h:811,
                 from marcxml-native.c:5:
/usr/include/libxml2/libxml/SAX.h:104:17: note: previous declaration of ‘attribute’ with type ‘void(void *, const xmlChar *, const xmlChar *)’ {aka ‘void(void *, const unsigned char *, const unsigned char *)’}
  104 |                 attribute                       (void *ctx,
      |                 ^~~~~~~~~
make: *** [/wynton/home/cbi/shared/software/CBI/_rocky8/R-4.6.1-gcc13/lib64/R/etc/Makeconf:190: marcxml-native.o] Error 1
ERROR: compilation failed for package ‘marcxmlr’
* removing ‘/scratch/hb/revdepcheck.extras/globals/revdep/checks/marcxmlr/old/marcxmlr.Rcheck/marcxmlr’


```
# mistyR (1.20.0)

* GitHub: <https://github.com/saezlab/mistyR>
* Email: <mailto:jovan.tanevski@uni-heidelberg.de>

Run `revdepcheck::revdep_details(, "mistyR")` for more info

## In both

*   checking R code for possible problems ... NOTE
     ```
     ...
     plot_view_contributions: no visible binding for global variable ‘view’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/mistyR/new/mistyR.Rcheck/00_pkg_src/mistyR/R/plots.R:131-137)
     run_misty : <anonymous>: no visible binding for global variable ‘p’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/mistyR/new/mistyR.Rcheck/00_pkg_src/mistyR/R/misty.R:256-264)
     run_misty : <anonymous>: no visible binding for global variable
       ‘intra.RMSE’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/mistyR/new/mistyR.Rcheck/00_pkg_src/mistyR/R/misty.R:328-356)
     run_misty : <anonymous>: no visible binding for global variable
       ‘multi.RMSE’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/mistyR/new/mistyR.Rcheck/00_pkg_src/mistyR/R/misty.R:328-356)
     run_misty : <anonymous>: no visible binding for global variable
       ‘intra.R2’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/mistyR/new/mistyR.Rcheck/00_pkg_src/mistyR/R/misty.R:328-356)
     run_misty : <anonymous>: no visible binding for global variable
       ‘multi.R2’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/mistyR/new/mistyR.Rcheck/00_pkg_src/mistyR/R/misty.R:328-356)
     svm_model: no visible binding for global variable ‘index’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/mistyR/new/mistyR.Rcheck/00_pkg_src/mistyR/R/model-functions.R:422-446)
     Undefined global functions or variables:
       .PT Importance Predictor Target fraction index intra.R2 intra.RMSE
       measure multi.R2 multi.RMSE nsamples p prediction sd target total ts
       value view
     Consider adding
       importFrom("stats", "sd", "ts")
     to your NAMESPACE file.
     ```

*   checking Rd files ... NOTE
     ```
     checkRd: (-1) collect_results.Rd:32: Lost braces; missing escapes or markup?
         32 |             for all performance measures for each {target} over all samples.}
            |                                                   ^
     ```

*   checking for non-standard things in the check directory ... NOTE
     ```
     Found the following files/directories:
       ‘results’
     ```

# MLDataR (1.0.1)

* GitHub: <https://github.com/StatsGary/MLDataR>
* Email: <mailto:hutsons-hacks@outlook.com>
* GitHub mirror: <https://github.com/cran/MLDataR>

Run `revdepcheck::revdep_details(, "MLDataR")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     Namespaces in Imports field not imported from:
       ‘ConfusionTableR’ ‘OddsPlotty’ ‘caret’ ‘dplyr’ ‘ggplot2’ ‘parsnip’
       ‘ranger’ ‘recipes’ ‘rsample’ ‘varhandle’ ‘workflows’
       All declared Imports should be used.
     ```

# mlr3resampling (2026.9.24)

* GitHub: <https://github.com/tdhock/mlr3resampling>
* Email: <mailto:toby.hocking@r-project.org>
* GitHub mirror: <https://github.com/cran/mlr3resampling>

Run `revdepcheck::revdep_details(, "mlr3resampling")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     ...
     dev3.wynton.ucsf.edu:pid2626158.R: Unable to initialize verbs NIC /sys/class/infiniband/mlx5_0 (unit 0:0)
     dev3.wynton.ucsf.edu:pid2626158: PSM3 can't open nic unit: 0 (err=23)
     dev3.wynton.ucsf.edu:pid2626158.R: Unable to create send CQ of size 5080 on mlx5_0: Cannot allocate memory
     dev3.wynton.ucsf.edu:pid2626158.R: Unable to initialize verbs NIC /sys/class/infiniband/mlx5_0 (unit 0:0)
     --------------------------------------------------------------------------
     No OpenFabrics connection schemes reported that they were able to be
     used on a specific port.  As such, the openib BTL (OpenFabrics
     support) will be disabled for this port.
     
       Local host:           dev3
       Local device:         mlx5_0
       Local port:           1
       CPCs attempted:       rdmacm, udcm
     --------------------------------------------------------------------------
     dev3.wynton.ucsf.edu:pid2626158: PSM3 can't open nic unit: 0 (err=23)
     dev3.wynton.ucsf.edu:pid2626158.R: Unable to create send CQ of size 5080 on mlx5_0: Cannot allocate memory
     dev3.wynton.ucsf.edu:pid2626158.R: Unable to initialize verbs NIC /sys/class/infiniband/mlx5_0 (unit 0:0)
     --------------------------------------------------------------------------
     Open MPI failed an OFI Libfabric library call (fi_endpoint).  This is highly
     unusual; your job may behave unpredictably (and/or abort) after this.
     
       Local host: dev3
       Location: mtl_ofi_component.c:513
       Error: Invalid argument (22)
     --------------------------------------------------------------------------
     ```

# mlr3shiny (0.5.0)

* Email: <mailto:laurens.tetzlaff@outlook.de>
* GitHub mirror: <https://github.com/cran/mlr3shiny>

Run `revdepcheck::revdep_details(, "mlr3shiny")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     Namespaces in Imports field not imported from:
       ‘DT’ ‘GGally’ ‘Metrics’ ‘data.table’ ‘dplyr’ ‘ggparty’ ‘mlr3’
       ‘mlr3learners’ ‘mlr3measures’ ‘mlr3pipelines’ ‘mlr3viz’ ‘patchwork’
       ‘plyr’ ‘purrr’ ‘shinyWidgets’ ‘shinyalert’ ‘shinydashboard’ ‘shinyjs’
       ‘stats’ ‘stringr’
       All declared Imports should be used.
     ```

# mlr3summary (0.1.2)

* GitHub: <https://github.com/mlr-org/mlr3summary>
* Email: <mailto:dandls.datascience@gmail.com>
* GitHub mirror: <https://github.com/cran/mlr3summary>

Run `revdepcheck::revdep_details(, "mlr3summary")` for more info

## In both

*   checking Rd cross-references ... NOTE
     ```
     Unknown package ‘fastshap’ in Rd xrefs
     ```

# mmaqshiny (1.0.0)

* GitHub: <https://github.com/meenakshi-kushwaha/mmaqshiny>
* Email: <mailto:adithi@ilklabs.com>
* GitHub mirror: <https://github.com/cran/mmaqshiny>

Run `revdepcheck::revdep_details(, "mmaqshiny")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     Namespaces in Imports field not imported from:
       ‘Cairo’ ‘DT’ ‘XML’ ‘caTools’ ‘data.table’ ‘dplyr’ ‘ggplot2’
       ‘htmltools’ ‘leaflet’ ‘lubridate’ ‘plotly’ ‘shinyjs’ ‘stringr’ ‘xts’
       ‘zoo’
       All declared Imports should be used.
     ```

# MSstatsBig (1.10.0)

* Email: <mailto:wu.anthon@northeastern.edu>

Run `revdepcheck::revdep_details(, "MSstatsBig")` for more info

## In both

*   checking R code for possible problems ... NOTE
     ```
     ...
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/MSstatsBig/new/MSstatsBig.Rcheck/00_pkg_src/MSstatsBig/R/clean_spectronaut.R:98-100)
     cleanSpectronautChunk: no visible binding for global variable
       ‘FFrgLossType’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/MSstatsBig/new/MSstatsBig.Rcheck/00_pkg_src/MSstatsBig/R/clean_spectronaut.R:103)
     cleanSpectronautChunk: no visible binding for global variable
       ‘LabeledSequence’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/MSstatsBig/new/MSstatsBig.Rcheck/00_pkg_src/MSstatsBig/R/clean_spectronaut.R:105)
     cleanSpectronautChunk: no visible global function definition for ‘:=’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/MSstatsBig/new/MSstatsBig.Rcheck/00_pkg_src/MSstatsBig/R/clean_spectronaut.R:106)
     cleanSpectronautChunk: no visible binding for global variable
       ‘IsotopeLabelType’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/MSstatsBig/new/MSstatsBig.Rcheck/00_pkg_src/MSstatsBig/R/clean_spectronaut.R:106)
     cleanSpectronautChunk: no visible binding for global variable
       ‘IsLabeled’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/MSstatsBig/new/MSstatsBig.Rcheck/00_pkg_src/MSstatsBig/R/clean_spectronaut.R:106)
     Undefined global functions or variables:
       %>% := BioReplicate Condition EGQvalue Excluded FFrgLossType Feature
       FragmentIon Identified Intensity IsLabeled IsotopeLabelType
       LabeledSequence MeanAbundance NumObs NumProteins PGQvalue
       PeptideSequence PrecursorCharge ProductCharge ProteinName Rank Run
       across all_of feature_rank filter group_by inner_join input
       max_intensity min_rank n_distinct select summarise tbl
     Consider adding
       importFrom("stats", "filter")
     to your NAMESPACE file.
     ```

*   checking for non-standard things in the check directory ... NOTE
     ```
     Found the following files/directories:
       ‘output_file.csv’ ‘proc_out.csv’ ‘reduce_output_output_file.csv’
       ‘tencol_format.csv’ ‘topN_output_file.csv’ ‘topN_proc_out.csv’
       ‘topN_tencol_format.csv’
     ```

# MSstatsShiny (1.14.0)

* GitHub: <https://github.com/Vitek-Lab/MSstatsShiny>
* Email: <mailto:wu.anthon@northeastern.edu>

Run `revdepcheck::revdep_details(, "MSstatsShiny")` for more info

## In both

*   checking whether package ‘MSstatsShiny’ can be installed ... WARNING
     ```
     Found the following significant warnings:
       Warning: replacing previous import ‘MSstatsConvert::OpenMStoMSstatsTMTFormat’ by ‘MSstatsTMT::OpenMStoMSstatsTMTFormat’ when loading ‘MSstatsShiny’
       Warning: replacing previous import ‘MSstatsConvert::MaxQtoMSstatsTMTFormat’ by ‘MSstatsTMT::MaxQtoMSstatsTMTFormat’ when loading ‘MSstatsShiny’
       Warning: replacing previous import ‘MSstatsConvert::PDtoMSstatsTMTFormat’ by ‘MSstatsTMT::PDtoMSstatsTMTFormat’ when loading ‘MSstatsShiny’
       Warning: replacing previous import ‘MSstatsConvert::PhilosophertoMSstatsTMTFormat’ by ‘MSstatsTMT::PhilosophertoMSstatsTMTFormat’ when loading ‘MSstatsShiny’
       Warning: replacing previous import ‘MSstatsConvert::SpectroMinetoMSstatsTMTFormat’ by ‘MSstatsTMT::SpectroMinetoMSstatsTMTFormat’ when loading ‘MSstatsShiny’
     See ‘/scratch/hb/revdepcheck.extras/globals/revdep/checks/MSstatsShiny/new/MSstatsShiny.Rcheck/00install.out’ for details.
     ```

*   checking Rd \usage sections ... WARNING
     ```
     Undocumented arguments in Rd file 'loadpageServer.Rd'
       ‘app_template’
     
     Undocumented arguments in Rd file 'qcServer.Rd'
       ‘app_template’ ‘get_condition_metadata’
     
     Undocumented arguments in Rd file 'statmodelServer.Rd'
       ‘turnover_ratios’ ‘condition_metadata’
     
     Functions with \usage entries need to have the appropriate \alias
     entries, and all their arguments documented.
     The \usage entries must correspond to syntactically valid R code.
     See chapter ‘Writing R documentation files’ in the ‘Writing R
     Extensions’ manual.
     ```

*   checking dependencies in R code ... NOTE
     ```
     Unexported objects imported by ':::' calls:
       ‘MSstatsTMT:::.logSum’ ‘MSstatsTMT:::.summarizeSimpleStat’
       ‘MSstatsTMT:::.summarizeTMP’
       ‘MSstatsTMT:::MSstatsFitComparisonModelsTMT’
       ‘MSstatsTMT:::MSstatsGroupComparisonOutputTMT’
       ‘MSstatsTMT:::MSstatsModerateTTest’
       ‘MSstatsTMT:::MSstatsNormalizeTMT’
       ‘MSstatsTMT:::MSstatsPrepareForGroupComparisonTMT’
       ‘MSstatsTMT:::MSstatsPrepareForSummarizationTMT’
       ‘MSstatsTMT:::MSstatsSummarizationOutputTMT’
       ‘MSstatsTMT:::MSstatsTestSingleProteinTMT’
       ‘MSstatsTMT:::getProcessedTMT’ ‘MSstatsTMT:::getSummarizedTMT’
       ‘shinyBS:::buildTooltipOrPopoverOptionsList’ ‘shinyBS:::shinyBSDep’
       See the note in ?`:::` about the use of this operator.
     ```

*   checking R code for possible problems ... NOTE
     ```
     ...
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/MSstatsShiny/new/MSstatsShiny.Rcheck/00_pkg_src/MSstatsShiny/R/module-visualize-network-server.R:302)
     visualizeNetworkServer : <anonymous>: no visible global function
       definition for ‘reactiveVal’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/MSstatsShiny/new/MSstatsShiny.Rcheck/00_pkg_src/MSstatsShiny/R/module-visualize-network-server.R:305)
     visualizeNetworkServer : <anonymous>: no visible global function
       definition for ‘reactiveVal’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/MSstatsShiny/new/MSstatsShiny.Rcheck/00_pkg_src/MSstatsShiny/R/module-visualize-network-server.R:308)
     visualizeNetworkServer : <anonymous>: no visible global function
       definition for ‘updateTextInput’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/MSstatsShiny/new/MSstatsShiny.Rcheck/00_pkg_src/MSstatsShiny/R/module-visualize-network-server.R:470)
     Undefined global functions or variables:
       BioReplicate BioReplicate_Run Charge Condition Condition_Run FEATURES
       Features_Peptides_max Features_Peptides_min Fraction FragmentIon
       Intensity Max_Intensity Min_Intensity Mixture Number of Fractions
       PeptideSequence Peptides_Proteins_max Peptides_Proteins_min
       PrecursorCharge ProductCharge ProteinName Run TechRepMixture
       annotation.pd as callModule nfea npep reactiveVal setNames strong
       text turnover_ratios updateCheckboxInput updateRadioButtons
       updateTextInput
     Consider adding
       importFrom("graphics", "text")
       importFrom("methods", "as")
       importFrom("stats", "setNames")
     to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
     contains 'methods').
     ```

# multiverse (0.6.2)

* GitHub: <https://github.com/MUCollective/multiverse>
* Email: <mailto:abhraneel@u.northwestern.edu>
* GitHub mirror: <https://github.com/cran/multiverse>

Run `revdepcheck::revdep_details(, "multiverse")` for more info

## In both

*   checking DESCRIPTION meta-information ... NOTE
     ```
       Missing dependency on R >= 4.1.0 because package code uses the pipe
       |> or function shorthand \(...) syntax added in R 4.1.0.
       File(s) using such syntax:
         ‘accessors.R’ ‘export_json.R’ ‘extract.R’
     ```

# nestedcv (0.9.0)

* GitHub: <https://github.com/myles-lewis/nestedcv>
* Email: <mailto:myles.lewis@qmul.ac.uk>
* GitHub mirror: <https://github.com/cran/nestedcv>

Run `revdepcheck::revdep_details(, "nestedcv")` for more info

## In both

*   checking Rd cross-references ... NOTE
     ```
     Unknown package ‘CORElearn’ in Rd xrefs
     ```

# nevada (0.2.0)

* GitHub: <https://github.com/astamm/nevada>
* Email: <mailto:aymeric.stamm@cnrs.fr>
* GitHub mirror: <https://github.com/cran/nevada>

Run `revdepcheck::revdep_details(, "nevada")` for more info

## In both

*   checking DESCRIPTION meta-information ... NOTE
     ```
       Missing dependency on R >= 4.1.0 because package code uses the pipe
       |> or function shorthand \(...) syntax added in R 4.1.0.
       File(s) using such syntax:
         ‘visualizations.R’
     ```

# nfl4th (1.0.7)

* GitHub: <https://github.com/nflverse/nfl4th>
* Email: <mailto:bbaldwin206@gmail.com>
* GitHub mirror: <https://github.com/cran/nfl4th>

Run `revdepcheck::revdep_details(, "nfl4th")` for more info

## In both

*   checking whether startup messages can be suppressed ... NOTE
     ```
     ! GitHub.com seems offline, and `options(nfl4th.keep_games)` is not set to TRUE. Deleting the games cache, and predictions may not be available without an internet connection.
     
     It looks like this package (or a package it requires) has a startup
     message which cannot be suppressed: see ?packageStartupMessage.
     ```

# OutSeekR (1.1.0)

* Email: <mailto:pboutros@sbpdiscovery.org>
* GitHub mirror: <https://github.com/cran/OutSeekR>

Run `revdepcheck::revdep_details(, "OutSeekR")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     Namespaces in Imports field not imported from:
       ‘future’ ‘truncnorm’
       All declared Imports should be used.
     ```

# PAMpal (1.6.1)

* Email: <mailto:taiki.sakai@noaa.gov>
* GitHub mirror: <https://github.com/cran/PAMpal>

Run `revdepcheck::revdep_details(, "PAMpal")` for more info

## In both

*   checking whether package ‘PAMpal’ can be installed ... WARNING
     ```
     Found the following significant warnings:
       Warning: no DISPLAY variable so Tk is not available
     See ‘/scratch/hb/revdepcheck.extras/globals/revdep/checks/PAMpal/new/PAMpal.Rcheck/00install.out’ for details.
     ```

# PAMscapes (0.17.2)

* Email: <mailto:taiki.sakai@noaa.gov>
* GitHub mirror: <https://github.com/cran/PAMscapes>

Run `revdepcheck::revdep_details(, "PAMscapes")` for more info

## In both

*   checking whether package ‘PAMscapes’ can be installed ... WARNING
     ```
     Found the following significant warnings:
       Warning: no DISPLAY variable so Tk is not available
     See ‘/scratch/hb/revdepcheck.extras/globals/revdep/checks/PAMscapes/new/PAMscapes.Rcheck/00install.out’ for details.
     ```

# partR2 (0.9.2)

* GitHub: <https://github.com/mastoffel/partR2>
* Email: <mailto:martin.adam.stoffel@gmail.com>
* GitHub mirror: <https://github.com/cran/partR2>

Run `revdepcheck::revdep_details(, "partR2")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     Namespace in Imports field not imported from: ‘methods’
       All declared Imports should be used.
     ```

# pavo (2.10.0)

* GitHub: <https://github.com/rmaia/pavo>
* Email: <mailto:thomas.white026@gmail.com>
* GitHub mirror: <https://github.com/cran/pavo>

Run `revdepcheck::revdep_details(, "pavo")` for more info

## In both

*   checking whether package ‘pavo’ can be installed ... WARNING
     ```
     Found the following significant warnings:
       Warning: no DISPLAY variable so Tk is not available
     See ‘/scratch/hb/revdepcheck.extras/globals/revdep/checks/pavo/new/pavo.Rcheck/00install.out’ for details.
     ```

# photosynthesis (2.1.5)

* GitHub: <https://github.com/cdmuir/photosynthesis>
* Email: <mailto:cdmuir@wisc.edu>
* GitHub mirror: <https://github.com/cran/photosynthesis>

Run `revdepcheck::revdep_details(, "photosynthesis")` for more info

## In both

*   checking DESCRIPTION meta-information ... NOTE
     ```
       Missing dependency on R >= 4.1.0 because package code uses the pipe
       |> or function shorthand \(...) syntax added in R 4.1.0.
       File(s) using such syntax:
         ‘bake-par.R’ ‘bake.R’ ‘calculated-parameters.R’ ‘conductance.R’
         ‘constants.R’ ‘enviro-par.R’ ‘fit_aq_response.R’
         ‘fit_aq_response2.Rd’ ‘fit_photosynthesis.R’ ‘fit_r_light.R’
         ‘fit_r_light2.Rd’ ‘leaf-par.R’ ‘make_parameters.R’ ‘models.R’
         ‘parameter_names.R’ ‘photosynthesis.R’ ‘read_licor.R’
         ‘simulate_error.R’ ‘simulate_error.Rd’ ‘utils.R’
     ```

# powRICLPM (0.2.1)

* GitHub: <https://github.com/JeroenDMulder/powRICLPM>
* Email: <mailto:j.d.mulder@uu.nl>
* GitHub mirror: <https://github.com/cran/powRICLPM>

Run `revdepcheck::revdep_details(, "powRICLPM")` for more info

## In both

*   checking DESCRIPTION meta-information ... NOTE
     ```
       Missing dependency on R >= 4.1.0 because package code uses the pipe
       |> or function shorthand \(...) syntax added in R 4.1.0.
       File(s) using such syntax:
         ‘save.R’
     ```

# ppsr (0.0.5)

* Email: <mailto:paulvanderlaken@gmail.com>
* GitHub mirror: <https://github.com/cran/ppsr>

Run `revdepcheck::revdep_details(, "ppsr")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     Namespaces in Imports field not imported from:
       ‘rpart’ ‘withr’
       All declared Imports should be used.
     ```

# Prostar (1.44.0)

* GitHub: <https://github.com/edyp-lab/Prostar>
* Email: <mailto:samuel.wieczorek@cea.fr>

Run `revdepcheck::revdep_details(, "Prostar")` for more info

## In both

*   checking for hidden files and directories ... NOTE
     ```
     Found the following hidden files and directories:
       docs/.nojekyll
     These were most likely included in error. See section ‘Package
     structure’ in the ‘Writing R Extensions’ manual.
     ```

*   checking dependencies in R code ... NOTE
     ```
     Namespaces in Imports field not imported from:
       ‘DT’ ‘R.utils’ ‘RColorBrewer’ ‘XML’ ‘colourpicker’ ‘future’ ‘ggplot2’
       ‘gtools’ ‘markdown’ ‘rclipboard’ ‘sass’ ‘shinyTree’ ‘shinyWidgets’
       All declared Imports should be used.
     ```

*   checking files in ‘vignettes’ ... NOTE
     ```
     The following files look like leftovers/mistakes:
       ‘Prostar_UserManual.log’
     Please remove them from your package.
     ```

# pseudohouseholds (0.1.1)

* GitHub: <https://github.com/chris31415926535/pseudohouseholds>
* Email: <mailto:christopher.a.belanger@gmail.com>
* GitHub mirror: <https://github.com/cran/pseudohouseholds>

Run `revdepcheck::revdep_details(, "pseudohouseholds")` for more info

## In both

*   checking DESCRIPTION meta-information ... NOTE
     ```
       Missing dependency on R >= 4.1.0 because package code uses the pipe
       |> or function shorthand \(...) syntax added in R 4.1.0.
       File(s) using such syntax:
         ‘pseudohouseholds.R’
     ```

# pvLRT (0.5.1)

* GitHub: <https://github.com/c7rishi/pvLRT>
* Email: <mailto:chakra.saptarshi@gmail.com>
* GitHub mirror: <https://github.com/cran/pvLRT>

Run `revdepcheck::revdep_details(, "pvLRT")` for more info

## In both

*   checking Rd files ... NOTE
     ```
     checkRd: (-1) pvlrt.Rd:42: Lost braces; missing escapes or markup?
         42 | \item{no_zi_idx}{List of pairs {(i, j)} where zero inflation is not allowed. To
            |                                ^
     checkRd: (-1) r_contin_table_zip.Rd:35: Lost braces; missing escapes or markup?
         35 | \item{no_zi_idx}{List of pairs {(i, j)} where zero inflation is not allowed. To
            |                                ^
     ```

# qape (2.1)

* Email: <mailto:alicja.wolny-dominiak@ue.katowice.pl>
* GitHub mirror: <https://github.com/cran/qape>

Run `revdepcheck::revdep_details(, "qape")` for more info

## In both

*   checking Rd files ... NOTE
     ```
     checkRd: (-1) srswrRe.Rd:10: Lost braces
         10 |   \item{listRanef}{{\emph{ranef(model)}} object where {\emph{model}} is an { \emph{lmer}} object.}
            |                                                                            ^
     ```

# remiod (1.0.2)

* GitHub: <https://github.com/xsswang/remiod>
* Email: <mailto:xwang@imedacs.com>
* GitHub mirror: <https://github.com/cran/remiod>

Run `revdepcheck::revdep_details(, "remiod")` for more info

## In both

*   checking S3 generic/method consistency ... NOTE
     ```
     Mismatches for apparent methods not registered:
     rep:
       function(x, ...)
     rep.data.frame:
       function(x, times)
     See section ‘Registering S3 methods’ in the ‘Writing R Extensions’
     manual.
     ```

# RFLOMICS (1.4.2)

* GitHub: <https://github.com/RFLOMICS/RFLOMICS>
* Email: <mailto:nadia.bessoltane@inrae.fr>

Run `revdepcheck::revdep_details(, "RFLOMICS")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     Namespaces in Imports field not imported from:
       ‘org.At.tair.db’ ‘reticulate’
       All declared Imports should be used.
     ```

*   checking R code for possible problems ... NOTE
     ```
     ...
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/RFLOMICS/new/RFLOMICS.Rcheck/00_pkg_src/RFLOMICS/R/RFLOMICS-Methods_03_data_explor.R:911-917)
     runOmicsPCA,RflomicsSE: no visible global function definition for
       ‘assay’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/RFLOMICS/new/RFLOMICS.Rcheck/00_pkg_src/RFLOMICS/R/RFLOMICS-Methods_03_data_explor.R:1100)
     Undefined global functions or variables:
       % of explained variance -log10pvalue . Adj.pvalue All C Category
       Cluster Component Contrast Count Cumulative Explained Variance DEF
       DataFrame Dataset Description Entity ExperimentList FC Gene GeneRatio
       N SE.name SUMCOL Up_Down Var2 across add_tally arrange assay assay<-
       cluster colData colData<- complete.cases contrast contrastName
       contrastName3 cor criteria data dataName dataset datasetFill desc
       distinct does.belong ecoseed.df errors experiments factorType filter
       fixFactor2 full_join group groupComparison group_by groups head
       if_else intersectColumns label left_join log2FC logFC logLike
       mean.y_profiles missed_p missed_value mtext mutate mutate_at n
       nb_missed observations omicName outsideGroup p.adjust packageVersion
       par percent presence primary prop pvalue relevel relocate right_join
       sampleMap samples sd select_if sessionInfo status summarise summarize
       tabel type ungroup value variable x xend y y.axis y_profiles yend
     Consider adding
       importFrom("graphics", "mtext", "par")
       importFrom("stats", "C", "complete.cases", "cor", "filter", "p.adjust",
                  "relevel", "sd")
       importFrom("utils", "data", "head", "packageVersion", "sessionInfo")
     to your NAMESPACE file.
     ```

# rsparkling (0.2.19)

* GitHub: <https://github.com/h2oai/sparkling-water>
* Email: <mailto:jakub@h2o.ai>
* GitHub mirror: <https://github.com/cran/rsparkling>

Run `revdepcheck::revdep_details(, "rsparkling")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     Namespace in Imports field not imported from: ‘h2o’
       All declared Imports should be used.
     ```

# rtemis (1.2.7)

* GitHub: <https://github.com/rtemis-org/rtemis>
* Email: <mailto:gennatas@gmail.com>
* GitHub mirror: <https://github.com/cran/rtemis>

Run `revdepcheck::revdep_details(, "rtemis")` for more info

## In both

*   checking tests ...
     ```
     ...
       
       2026-10-11 11:36:54 [0m[1;38;2;15;106;102m✓[0m Done in 0.51 seconds.[0m [train]
       [ FAIL 1 | WARN 4 | SKIP 4 | PASS 356 ]
       
       ══ Skipped tests (4) ═══════════════════════════════════════════════════════════
       • For local testing only; requires CSV file (3): 'test_ClusterConfig.R:19:3',
         'test_DecomposeConfig.R:19:3', 'test_SuperConfig.R:48:3'
       • empty test (1):
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test_Clustering.R:96:3'): cluster_DBSCAN() succeeds ─────────────────
       Error: approx must be a single, finite, nonnegative number.
       Backtrace:
           ▆
        1. └─rtemis::cluster(...) at test_Clustering.R:96:3
        2.   └─rtemis:::cluster_(config = config, x = x, verbosity = verbosity) at rtemis/R/cluster.R:86:3
        3.     ├─S7::S7_dispatch() at rtemis/R/00_init.R:268:5
        4.     └─rtemis (local) `method(cluster_, rtemis::DBSCANConfig)`(...)
        5.       └─dbscan::dbscan(...) at rtemis/R/cluster_DBSCAN.R:22:3
        6.         └─dbscan:::.validate_nonnegative_scalar(extra$approx %||% 0, "approx")
       
       [ FAIL 1 | WARN 4 | SKIP 4 | PASS 356 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# scanMiRApp (1.18.0)

* Email: <mailto:pierre-luc.germain@hest.ethz.ch>

Run `revdepcheck::revdep_details(, "scanMiRApp")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     ':::' calls which should be '::':
       'BSgenome.Hsapiens.UCSC.hg38:::BSgenome.Hsapiens.UCSC.hg38'
       'BSgenome.Mmusculus.UCSC.mm10:::BSgenome.Mmusculus.UCSC.mm10'
       'BSgenome.Mmusculus.UCSC.mm39:::BSgenome.Mmusculus.UCSC.mm39'
       'BSgenome.Rnorvegicus.UCSC.rn6:::BSgenome.Rnorvegicus.UCSC.rn6'
       See the note in ?`:::` about the use of this operator.
     ```

*   checking R code for possible problems ... NOTE
     ```
     .fakeAnno: no visible binding for global variable 'SampleTranscript'
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/scanMiRApp/new/scanMiRApp.Rcheck/00_pkg_src/scanMiRApp/R/scanMiRAnno.R:165)
     .fakeAnno: no visible binding for global variable 'SampleKdModel'
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/scanMiRApp/new/scanMiRApp.Rcheck/00_pkg_src/scanMiRApp/R/scanMiRAnno.R:175)
     plotSitesOnUTR: no visible binding for global variable 'logKd'
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/scanMiRApp/new/scanMiRApp.Rcheck/00_pkg_src/scanMiRApp/R/getTranscriptSequence.R:215-222)
     plotSitesOnUTR: no visible binding for global variable 'note'
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/scanMiRApp/new/scanMiRApp.Rcheck/00_pkg_src/scanMiRApp/R/getTranscriptSequence.R:228-229)
     plotSitesOnUTR: no visible binding for global variable 'type'
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/scanMiRApp/new/scanMiRApp.Rcheck/00_pkg_src/scanMiRApp/R/getTranscriptSequence.R:233-236)
     Undefined global functions or variables:
       SampleKdModel SampleTranscript logKd note type
     ```

*   checking for non-standard things in the check directory ... NOTE
     ```
     Found the following files/directories:
       ‘.fst’ ‘.idx.rds’
     ```

# SCArray.sat (1.12.0)

* GitHub: <https://github.com/AbbVie-ComputationalGenomics/SCArray>
* Email: <mailto:xiuwen.zheng@abbvie.com>

Run `revdepcheck::revdep_details(, "SCArray.sat")` for more info

## In both

*   checking examples ... ERROR
     ```
     ...
       |================================================================| 100%
     
       |                                                                      
       |                                                                |   0%
       |                                                                      
       |================================================================| 100%
     > 
     > d <- NormalizeData(d)
     Normalizing layer: counts
     Performing log-normalization
     > d <- FindVariableFeatures(d, nfeatures=250)
     Finding variable features for layer counts
     Calculating gene variances
     Calculating feature variances of standardized and clipped values
     
       |                                                                      
       |                                                                |   0%
       |                                                                      
       |================================================================| 100%
     > d <- ScaleData(d)
     Centering and scaling data matrix (SC_GDSMatrix [250x850])
     > 
     > d <- RunPCA(d, ndims.print=1:2)
     Error: Not compatible with requested type: [type=S4; target=double].
     Execution halted
     ```

*   checking dependencies in R code ... NOTE
     ```
     Unexported objects imported by ':::' calls:
       ‘Seurat:::DEmethods_counts’ ‘Seurat:::DEmethods_nocorrect’
       ‘Seurat:::FastExpMean’ ‘Seurat:::FastLogVMR’ ‘Seurat:::NBResiduals’
       ‘Seurat:::UpdateKey’ ‘Seurat:::ValidateDataForMerge’
       See the note in ?`:::` about the use of this operator.
     ```

*   checking R code for possible problems ... NOTE
     ```
     CreateAssayObject2: no visible global function definition for
       ‘CreateAssay5Object’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/SCArray.sat/new/SCArray.sat.Rcheck/00_pkg_src/SCArray.sat/R/Methods.R:182)
     Undefined global functions or variables:
       CreateAssay5Object
     ```

# scLANE (1.2.0)

* GitHub: <https://github.com/jr-leary7/scLANE>
* Email: <mailto:j.leary@ufl.edu>

Run `revdepcheck::revdep_details(, "scLANE")` for more info

## In both

*   checking re-building of vignette outputs ... ERROR
     ```
     ...
     --- re-building ‘scLANE.Rmd’ using rmarkdown
     
     Quitting from scLANE.Rmd:264-279 [unnamed-chunk-14]
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     <error/rlang_error>
     Error:
     ! object 'dv' not found
     ---
     Backtrace:
         ▆
      1. └─scLANE::embedGenes(expm1(smoothed_counts$Lineage_A))
      2.   └─irlba::prcomp_irlba(...) at scLANE/R/embedGenes.R:78:5
      3.     ├─base::do.call(irlba, args = args)
      4.     └─irlba (local) `<fn>`(A = `<dbl[,1198]>`, nv = 4, center = `<dbl>`, scale = `<dbl>`)
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     
     Error: processing vignette 'scLANE.Rmd' failed with diagnostics:
     object 'dv' not found
     --- failed re-building ‘scLANE.Rmd’
     
     SUMMARY: processing the following file failed:
       ‘scLANE.Rmd’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

# selenider (0.4.1)

* GitHub: <https://github.com/ashbythorpe/selenider>
* Email: <mailto:ashbythorpe@gmail.com>
* GitHub mirror: <https://github.com/cran/selenider>

Run `revdepcheck::revdep_details(, "selenider")` for more info

## In both

*   checking DESCRIPTION meta-information ... NOTE
     ```
       Missing dependency on R >= 4.1.0 because package code uses the pipe
       |> or function shorthand \(...) syntax added in R 4.1.0.
       File(s) using such syntax:
         ‘as.list.selenider_elements.Rd’ ‘elem_ancestors.Rd’ ‘elem_attr.Rd’
         ‘elem_cache.Rd’ ‘elem_click.Rd’ ‘elem_css_property.Rd’
         ‘elem_equal.Rd’ ‘elem_expect.Rd’ ‘elem_expect_all.Rd’
         ‘elem_filter.Rd’ ‘elem_flatten.Rd’ ‘elem_hover.Rd’ ‘elem_name.Rd’
         ‘elem_scroll_to.Rd’ ‘elem_select.Rd’ ‘elem_size.Rd’ ‘elem_text.Rd’
         ‘find_each_element.Rd’ ‘find_element.Rd’ ‘find_elements.Rd’
         ‘get_actual_element.Rd’ ‘s.Rd’
     ```

# Seqtometry (1.0.1)

* GitHub: <https://github.com/HawigerLab/Seqtometry>
* Email: <mailto:robert.kousnetsov@health.slu.edu>

Run `revdepcheck::revdep_details(, "Seqtometry")` for more info

## In both

*   checking examples ... WARNING
     ```
     Found the following significant warnings:
     
       Warning in .local(x, ...) : 'quickPerCellQC' is deprecated.
       Warning in .local(x, ...) : 'normalizeCounts' is deprecated.
       Warning in .local(x, ...) : 'quickPerCellQC' is deprecated.
       Warning in .local(x, ...) : 'normalizeCounts' is deprecated.
     Deprecated functions may be defunct as soon as of the next release of
     R.
     See ?Deprecated.
     ```

*   checking dependencies in R code ... NOTE
     ```
     Namespaces in Imports field not imported from:
       ‘DelayedMatrixStats’ ‘sparseMatrixStats’
       All declared Imports should be used.
     ```

*   checking R code for possible problems ... NOTE
     ```
     score: warning in assert_list(signatures, type = "character"): partial
       argument match of 'type' to 'types'
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/Seqtometry/new/Seqtometry.Rcheck/00_pkg_src/Seqtometry/R/score.R:58)
     ```

# shiny (1.14.0)

* GitHub: <https://github.com/rstudio/shiny>
* Email: <mailto:carson@posit.co>
* GitHub mirror: <https://github.com/cran/shiny>

Run `revdepcheck::revdep_details(, "shiny")` for more info

## In both

*   checking tests ...
     ```
     ...
         'test-stacks.R:249:3', 'test-stacks.R:267:3', 'test-stacks.R:288:3',
         'test-stacks.R:309:3', 'test-stacks.R:329:3', 'test-tabPanel.R:46:1',
         'test-tabPanel.R:66:1', 'test-tabPanel.R:73:1', 'test-tabPanel.R:83:1',
         'test-test-server.R:292:3', 'test-timer.R:4:1', 'test-utils.R:210:3',
         'test-zzz-st2-download.R:1:1'
       • Refactor test for next release (1): 'test-test-shinyAppTemplate.R:3:1'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Failure ('test-otel-label.R:33:3'): otel_span_label_reactive generates correct labels ──
       Expected `result` to equal "reactive event <anonymous>".
       Differences:
       `actual`:   "reactive event fn_name"    
       `expected`: "reactive event <anonymous>"
       
       ── Failure ('test-otel-label.R:150:3'): otel_span_label_observer generates correct labels ──
       Expected `result` to equal "observe event <anonymous>".
       Differences:
       `actual`:   "observe event fn_name"    
       `expected`: "observe event <anonymous>"
       
       
       [ FAIL 2 | WARN 2 | SKIP 40 | PASS 2313 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# shiny.destroy (0.1.0)

* Email: <mailto:arbaldry91@gmail.com>
* GitHub mirror: <https://github.com/cran/shiny.destroy>

Run `revdepcheck::revdep_details(, "shiny.destroy")` for more info

## In both

*   checking DESCRIPTION meta-information ... NOTE
     ```
       Missing dependency on R >= 4.1.0 because package code uses the pipe
       |> or function shorthand \(...) syntax added in R 4.1.0.
       File(s) using such syntax:
         ‘destroyModule.R’ ‘makeModule.R’
     ```

# shinymgr (1.1.0)

* Email: <mailto:laurence.clarfeld@uvm.edu>
* GitHub mirror: <https://github.com/cran/shinymgr>

Run `revdepcheck::revdep_details(, "shinymgr")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     Namespace in Imports field not imported from: ‘shinydashboard’
       All declared Imports should be used.
     ```

# shinyMobile (2.0.1)

* GitHub: <https://github.com/RinteRface/shinyMobile>
* Email: <mailto:dgranjon@ymail.com>
* GitHub mirror: <https://github.com/cran/shinyMobile>

Run `revdepcheck::revdep_details(, "shinyMobile")` for more info

## In both

*   checking DESCRIPTION meta-information ... NOTE
     ```
       Missing dependency on R >= 4.1.0 because package code uses the pipe
       |> or function shorthand \(...) syntax added in R 4.1.0.
       File(s) using such syntax:
         ‘fabs.Rd’
     ```

# simhelpers (0.3.1)

* GitHub: <https://github.com/meghapsimatrix/simhelpers>
* Email: <mailto:megha.j456@gmail.com>
* GitHub mirror: <https://github.com/cran/simhelpers>

Run `revdepcheck::revdep_details(, "simhelpers")` for more info

## In both

*   checking DESCRIPTION meta-information ... NOTE
     ```
       Missing dependency on R >= 4.1.0 because package code uses the pipe
       |> or function shorthand \(...) syntax added in R 4.1.0.
       File(s) using such syntax:
         ‘bootstrap-projection.R’ ‘bootstrap_CIs.Rd’ ‘bundle_sim.R’
         ‘calc_coverage.R’ ‘calc_rejection.R’ ‘extrapolate_coverage.Rd’
         ‘utilities.R’
     ```

# solitude (1.1.3)

* GitHub: <https://github.com/talegari/solitude>
* Email: <mailto:sri.teach@gmail.com>
* GitHub mirror: <https://github.com/cran/solitude>

Run `revdepcheck::revdep_details(, "solitude")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     Namespaces in Imports field not imported from:
       ‘R6’ ‘lgr’
       All declared Imports should be used.
     ```

# SpaDES.core (3.2.1)

* GitHub: <https://github.com/PredictiveEcology/SpaDES.core>
* Email: <mailto:eliot.mcintire@canada.ca>
* GitHub mirror: <https://github.com/cran/SpaDES.core>

Run `revdepcheck::revdep_details(, "SpaDES.core")` for more info

## In both

*   checking examples ... ERROR
     ```
     Running examples in ‘SpaDES.core-Ex.R’ failed
     The error most likely occurred in:
     
     > ### Name: convertToPackage
     > ### Title: Convert standard module code into an R package
     > ### Aliases: convertToPackage
     > 
     > ### ** Examples
     > 
     > if (requireNamespace("ggplot2") && requireNamespace("pkgload") ) {
     +   tmpdir <- tempdir2()
     +   newModule("test", tmpdir, open = FALSE)
     +   convertToPackage("test", path = tmpdir)
     + }
     Loading required namespace: pkgload
     New module test created at /scratch/hb/RtmpKgiyz4/working_dir/RtmpyZUszE/reproducible/U3C0xYmG
     ```

# sparklyr.nested (0.0.4)

* GitHub: <https://github.com/mitre/sparklyr.nested>
* Email: <mailto:mpollock@mitre.org>
* GitHub mirror: <https://github.com/cran/sparklyr.nested>

Run `revdepcheck::revdep_details(, "sparklyr.nested")` for more info

## In both

*   checking Rd files ... NOTE
     ```
     checkRd: (-1) sdf_unnest.Rd:20: Lost braces
         20 | \code{a1, a2, a3}, then code{sdf_explode(df, a)} will produce output with each record replicated
            |                             ^
     ```

# sparrpowR (0.2.9)

* GitHub: <https://github.com/machiela-lab/sparrpowR>
* Email: <mailto:ian.buller@alumni.emory.edu>
* GitHub mirror: <https://github.com/cran/sparrpowR>

Run `revdepcheck::revdep_details(, "sparrpowR")` for more info

## In both

*   checking whether package ‘sparrpowR’ can be installed ... WARNING
     ```
     Found the following significant warnings:
       Warning: no DISPLAY variable so Tk is not available
     See ‘/scratch/hb/revdepcheck.extras/globals/revdep/checks/sparrpowR/new/sparrpowR.Rcheck/00install.out’ for details.
     ```

# sperrorest (3.0.5)

* GitHub: <https://github.com/giscience-fsu/sperrorest>
* Email: <mailto:alexander.brenning@uni-jena.de>
* GitHub mirror: <https://github.com/cran/sperrorest>

Run `revdepcheck::revdep_details(, "sperrorest")` for more info

## In both

*   checking Rd files ... NOTE
     ```
     ...
            |                                          ^
     checkRd: (-1) partition_kmeans.Rd:41: Lost braces; missing escapes or markup?
         41 | if \code{TRUE} (used internally by other {sperrorest} functions), return a
            |                                          ^
     checkRd: (-1) partition_tiles.Rd:78: Lost braces; missing escapes or markup?
         78 | if \code{TRUE} (used internally by other {sperrorest} functions), return a
            |                                          ^
     checkRd: (-1) sperrorest.Rd:55: Lost braces; missing escapes or markup?
         55 | \code{formula} and \code{data} argument, which are provided by {sperrorest})}
            |                                                                ^
     checkRd: (-1) sperrorest.Rd:63: Lost braces; missing escapes or markup?
         63 | {sperrorest}).}
            | ^
     checkRd: (-1) sperrorest.Rd:135: Lost braces; missing escapes or markup?
        135 | A list (object of class {sperrorest}) with (up to) six components:
            |                         ^
     checkRd: (-1) sperrorest.Rd:148: Lost braces; missing escapes or markup?
        148 | information about the {sperrorest} package version
            |                       ^
     checkRd: (-1) summary.sperroresterror.Rd:5: Lost braces; missing escapes or markup?
          5 | \title{Summarize error statistics obtained by {sperrorest}}
            |                                               ^
     checkRd: (-1) summary.sperrorestimportance.Rd:5: Lost braces; missing escapes or markup?
          5 | \title{Summarize variable importance statistics obtained by {sperrorest}}
            |                                                             ^
     ```

# spsurv (1.1.0)

* GitHub: <https://github.com/rvpanaro/spsurv>
* Email: <mailto:rvpanaro@gmail.com>
* GitHub mirror: <https://github.com/cran/spsurv>

Run `revdepcheck::revdep_details(, "spsurv")` for more info

## In both

*   checking tests ...
     ```
     ...
       
       Exponentiated coefficients:
                                 Estimate  2.5% 97.5%
       karno                        1.025 1.025   1.0
       factor(celltype)smallcell    0.542 0.542   0.5
       factor(celltype)adeno        0.018 0.018   0.0
       factor(celltype)large        0.097 0.097   0.1
       
       --- 
       DIC = 2885   WAIC = -1443 
       [ FAIL 1 | WARN 46 | SKIP 1 | PASS 685 ]
       
       ══ Skipped tests (1) ═══════════════════════════════════════════════════════════
       • Set SPSURV_RUN_COVERAGE=true to run coverage check (1): 'test-coverage.R:6:3'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Failure ('test-vcov.R:113:3'): survfit std.err matches delta method with vcov for PH ──
       Expected `se_manual/H` < 1.
       Actual comparison: 2.3 >= 1.0
       Difference: 1.3 >= 0
       
       [ FAIL 1 | WARN 46 | SKIP 1 | PASS 685 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# sRACIPE (2.4.0)

* GitHub: <https://github.com/lusystemsbio/sRACIPE>
* Email: <mailto:m.lu@northeastern.edu>

Run `revdepcheck::revdep_details(, "sRACIPE")` for more info

## In both

*   checking C++ specification ... NOTE
     ```
       Obsolete C++11 standard request will be ignored
     ```

*   checking DESCRIPTION meta-information ... NOTE
     ```
     License stub is invalid DCF.
     ```

*   checking R code for possible problems ... NOTE
     ```
     sracipeConvergeDist,RacipeSE: no visible global function definition for
       ‘polygon’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/sRACIPE/new/sRACIPE.Rcheck/00_pkg_src/sRACIPE/R/methods.R:1085-1087)
     Undefined global functions or variables:
       polygon
     Consider adding
       importFrom("graphics", "polygon")
     to your NAMESPACE file.
     ```

*   checking Rd files ... NOTE
     ```
     checkRd: (-1) sracipeHeatmapSimilarity.Rd:31: Lost braces
         31 | If clusterCut is missing, hierarchical clustering using /code{ward.D2}
            |                                                              ^
     checkRd: (-1) sracipeHeatmapSimilarity.Rd:32: Lost braces
         32 | and /code{distance  = (1-cor(x, method = "spear"))/2} will be used to 
            |          ^
     ```

# STARRS (1.0)

* Email: <mailto:daphne.giorgi@sorbonne-universite.fr>
* GitHub mirror: <https://github.com/cran/STARRS>

Run `revdepcheck::revdep_details(, "STARRS")` for more info

## In both

*   checking re-building of vignette outputs ... ERROR
     ```
     ...
     Error: processing vignette 'STARRS-clustering.Rmd' failed with diagnostics:
     Attempting to set up 48 localhost parallel workers with only 2 CPU cores available for this R process (per 'fallback'), which could result in a 2400% load. The hard limit is set to 300%. Overusing the CPUs has negative impact on the current R process, but also on all other processes of yours and others running on the same machine. See help("parallelly.maxWorkers.localhost", package = "parallelly") for further explanations and how to override the hard limit that triggered this error. By the way, was parallel::detectCores() used, because the number of workers (48) equals detectCores()? If so, please use parallelly::availableCores() instead
     --- failed re-building ‘STARRS-clustering.Rmd’
     
     --- re-building ‘STARRS-intro.Rmd’ using rmarkdown
     [WARNING] Deprecated: --mathjax. Use --math-method=mathjax[:URL] instead.
     --- finished re-building ‘STARRS-intro.Rmd’
     
     --- re-building ‘STARRS-median-mcm.Rmd’ using rmarkdown
     [WARNING] Deprecated: --mathjax. Use --math-method=mathjax[:URL] instead.
     --- finished re-building ‘STARRS-median-mcm.Rmd’
     
     --- re-building ‘STARRS-regression.Rmd’ using rmarkdown
     [WARNING] Deprecated: --mathjax. Use --math-method=mathjax[:URL] instead.
     --- finished re-building ‘STARRS-regression.Rmd’
     
     --- re-building ‘STARRS-robust-variance.Rmd’ using rmarkdown
     [WARNING] Deprecated: --mathjax. Use --math-method=mathjax[:URL] instead.
     --- finished re-building ‘STARRS-robust-variance.Rmd’
     
     SUMMARY: processing the following file failed:
       ‘STARRS-clustering.Rmd’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

# stppSim (1.3.4)

* GitHub: <https://github.com/Manalytics/stppSim>
* Email: <mailto:monsuur2010@yahoo.com>
* GitHub mirror: <https://github.com/cran/stppSim>

Run `revdepcheck::revdep_details(, "stppSim")` for more info

## In both

*   checking whether package ‘stppSim’ can be installed ... WARNING
     ```
     Found the following significant warnings:
       Warning: no DISPLAY variable so Tk is not available
     See ‘/scratch/hb/revdepcheck.extras/globals/revdep/checks/stppSim/new/stppSim.Rcheck/00install.out’ for details.
     ```

# survstan (0.0.7.1)

* GitHub: <https://github.com/fndemarqui/survstan>
* Email: <mailto:fndemarqui@est.ufmg.br>
* GitHub mirror: <https://github.com/cran/survstan>

Run `revdepcheck::revdep_details(, "survstan")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     Namespaces in Imports field not imported from:
       ‘RcppParallel’ ‘rstantools’
       All declared Imports should be used.
     ```

# synergyfinder (3.20.0)

* Email: <mailto:shuyu.zheng@helsinki.fi>

Run `revdepcheck::revdep_details(, "synergyfinder")` for more info

## In both

*   checking examples ... ERROR
     ```
     Running examples in ‘synergyfinder-Ex.R’ failed
     The error most likely occurred in:
     
     > ### Name: PlotMultiDrugSurface
     > ### Title: 3D Plot for Multi-drug Combination Dose-Response/Synergy Scores
     > ### Aliases: PlotMultiDrugSurface
     > 
     > ### ** Examples
     > 
     > data("NCATS_screening_data")
     > data <- ReshapeData(NCATS_screening_data)
     > p <- PlotMultiDrugSurface(
     +   data,
     +   plot_block = 1,
     +   plot_value = "response",
     +   show_data_points = TRUE,
     +   distance_method = "mahalanobis",
     +   summary_statistic = "mean"
     + )
     Error in `stats::na.omit`(list(`W[, 3]` = c(1184.26006356869, 1369.42709773729 : 
       could not find function "stats::na.omit"
     Calls: PlotMultiDrugSurface ... lm -> eval -> eval -> <Anonymous> -> model.frame.default
     Execution halted
     ```

*   checking dependencies in R code ... WARNING
     ```
     '::' or ':::' import not declared from: ‘scales’
     Namespaces in Imports field not imported from:
       ‘future’ ‘gstat’ ‘nleqslv’ ‘sp’ ‘tidyverse’
       All declared Imports should be used.
     ```

*   checking R code for possible problems ... NOTE
     ```
     ...
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/synergyfinder/new/synergyfinder.Rcheck/00_pkg_src/synergyfinder/R/calculate_synergy_score.R:371-389)
     ZIP : <anonymous>: no visible global function definition for ‘:=’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/synergyfinder/new/synergyfinder.Rcheck/00_pkg_src/synergyfinder/R/calculate_synergy_score.R:371-389)
     ZIP: no visible binding for global variable ‘.’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/synergyfinder/new/synergyfinder.Rcheck/00_pkg_src/synergyfinder/R/calculate_synergy_score.R:393-395)
     ZIP: no visible binding for global variable ‘ZIP_fit’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/synergyfinder/new/synergyfinder.Rcheck/00_pkg_src/synergyfinder/R/calculate_synergy_score.R:411-413)
     ZIP: no visible binding for global variable ‘ZIP_ref’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/synergyfinder/new/synergyfinder.Rcheck/00_pkg_src/synergyfinder/R/calculate_synergy_score.R:411-413)
     ZIP: no visible binding for global variable ‘ZIP_synergy’
       (/scratch/hb/revdepcheck.extras/globals/revdep/checks/synergyfinder/new/synergyfinder.Rcheck/00_pkg_src/synergyfinder/R/calculate_synergy_score.R:411-413)
     Undefined global functions or variables:
       . := Bliss_ref HSA_ref ZIP_fit ZIP_ref ZIP_synergy adjust angle
       block_id color conc1 conc2 css data dev.list dev.off end head id
       input_type label left maxn metric n nn pred predict r response
       response_CI95 response_mean response_origin response_origin_CI95
       response_origin_mean response_origin_sd response_origin_sem
       response_sd response_sem right start synergy t.test text theta value
       x y
     Consider adding
       importFrom("grDevices", "dev.list", "dev.off")
       importFrom("graphics", "text")
       importFrom("stats", "end", "predict", "start", "t.test")
       importFrom("utils", "data", "head")
     to your NAMESPACE file.
     ```

*   checking Rd files ... NOTE
     ```
     checkRd: (-1) FitDoseResponse.Rd:54: Lost braces
         54 | href{https://onlinelibrary.wiley.com/doi/book/10.1002/0471725315}{Nonlinear
            |     ^
     checkRd: (-1) FitDoseResponse.Rd:54-55: Lost braces
         54 | href{https://onlinelibrary.wiley.com/doi/book/10.1002/0471725315}{Nonlinear
            |                                                                  ^
     checkRd: (-1) FitDoseResponse.Rd:55: Escaped LaTeX specials: \&
     checkRd: (-1) PlotBarometer.Rd:118: Lost braces
        118 | href{https://www.frontiersin.org/articles/10.3389/fphar.2015.00181/full}{What
            |     ^
     checkRd: (-1) PlotBarometer.Rd:118-119: Lost braces
        118 | href{https://www.frontiersin.org/articles/10.3389/fphar.2015.00181/full}{What
            |                                                                         ^
     checkRd: (-1) PlotDoseResponseCurve.Rd:84: Lost braces
         84 | link[drc]{plot.drc} function. For example, use xlim = c(0.5, 500) or
            |          ^
     ```

# tidypredict (1.2.1)

* GitHub: <https://github.com/tidymodels/tidypredict>
* Email: <mailto:emil.hvitfeldt@posit.co>
* GitHub mirror: <https://github.com/cran/tidypredict>

Run `revdepcheck::revdep_details(, "tidypredict")` for more info

## In both

*   checking re-building of vignette outputs ... ERROR
     ```
     ...
     --- re-building ‘sql.Rmd’ using rmarkdown
     [WARNING] Deprecated: --mathjax. Use --math-method=mathjax[:URL] instead.
     --- finished re-building ‘sql.Rmd’
     
     --- re-building ‘tree-internals.Rmd’ using rmarkdown
     [WARNING] Deprecated: --mathjax. Use --math-method=mathjax[:URL] instead.
     --- finished re-building ‘tree-internals.Rmd’
     
     --- re-building ‘tree.Rmd’ using rmarkdown
     [WARNING] Deprecated: --mathjax. Use --math-method=mathjax[:URL] instead.
     --- finished re-building ‘tree.Rmd’
     
     --- re-building ‘xgboost.Rmd’ using rmarkdown
     [WARNING] Deprecated: --mathjax. Use --math-method=mathjax[:URL] instead.
     --- finished re-building ‘xgboost.Rmd’
     
     --- re-building ‘xrf.Rmd’ using rmarkdown
     [WARNING] Deprecated: --mathjax. Use --math-method=mathjax[:URL] instead.
     --- finished re-building ‘xrf.Rmd’
     
     SUMMARY: processing the following files failed:
       ‘h2o.Rmd’ ‘lm.Rmd’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

# TriDimRegression (1.0.3)

* GitHub: <https://github.com/alexander-pastukhov/tridim-regression>
* Email: <mailto:pastukhov.alexander@gmail.com>
* GitHub mirror: <https://github.com/cran/TriDimRegression>

Run `revdepcheck::revdep_details(, "TriDimRegression")` for more info

## In both

*   checking whether package ‘TriDimRegression’ can be installed ... ERROR
     ```
     Installation failed.
     See ‘/scratch/hb/revdepcheck.extras/globals/revdep/checks/TriDimRegression/new/TriDimRegression.Rcheck/00install.out’ for details.
     ```

## Installation

### Devel

```
* installing *source* package ‘TriDimRegression’ ...
** this is package ‘TriDimRegression’ version ‘1.0.3’
** package ‘TriDimRegression’ successfully unpacked and MD5 sums checked
** using staged installation
Error in loadNamespace(x) : there is no package called ‘rstantools’
Calls: loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: configuration failed for package ‘TriDimRegression’
* removing ‘/scratch/hb/revdepcheck.extras/globals/revdep/checks/TriDimRegression/new/TriDimRegression.Rcheck/TriDimRegression’


```
### CRAN

```
* installing *source* package ‘TriDimRegression’ ...
** this is package ‘TriDimRegression’ version ‘1.0.3’
** package ‘TriDimRegression’ successfully unpacked and MD5 sums checked
** using staged installation
Error in loadNamespace(x) : there is no package called ‘rstantools’
Calls: loadNamespace -> withRestarts -> withOneRestart -> doWithOneRestart
Execution halted
ERROR: configuration failed for package ‘TriDimRegression’
* removing ‘/scratch/hb/revdepcheck.extras/globals/revdep/checks/TriDimRegression/old/TriDimRegression.Rcheck/TriDimRegression’


```
# txshift (0.3.8)

* GitHub: <https://github.com/nhejazi/txshift>
* Email: <mailto:nh@nimahejazi.org>
* GitHub mirror: <https://github.com/cran/txshift>

Run `revdepcheck::revdep_details(, "txshift")` for more info

## In both

*   checking Rd files ... NOTE
     ```
     checkRd: (-1) est_g_exp.Rd:55: Lost braces; missing escapes or markup?
         55 |  {A - delta}, {A + delta}, and {A + 2 * delta}).
            |  ^
     checkRd: (-1) est_g_exp.Rd:55: Lost braces; missing escapes or markup?
         55 |  {A - delta}, {A + delta}, and {A + 2 * delta}).
            |               ^
     checkRd: (-1) est_g_exp.Rd:55: Lost braces; missing escapes or markup?
         55 |  {A - delta}, {A + delta}, and {A + 2 * delta}).
            |                                ^
     ```

# UniCensorEM (0.1.0)

* Email: <mailto:shikhar1093tyagi@gmail.com>
* GitHub mirror: <https://github.com/cran/UniCensorEM>

Run `revdepcheck::revdep_details(, "UniCensorEM")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     Namespaces in Imports field not imported from:
       ‘grDevices’ ‘methods’ ‘utils’
       All declared Imports should be used.
     ```

# vmeasur (0.1.4)

* Email: <mailto:jhuc964@aucklanduni.ac.nz>
* GitHub mirror: <https://github.com/cran/vmeasur>

Run `revdepcheck::revdep_details(, "vmeasur")` for more info

## In both

*   checking whether package ‘vmeasur’ can be installed ... WARNING
     ```
     Found the following significant warnings:
       Warning: no DISPLAY variable so Tk is not available
     See ‘/scratch/hb/revdepcheck.extras/globals/revdep/checks/vmeasur/new/vmeasur.Rcheck/00install.out’ for details.
     ```

