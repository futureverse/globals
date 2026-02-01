# activAnalyzer (2.1.2)

* GitHub: <https://github.com/pydemull/activAnalyzer>
* Email: <mailto:pydemull@uco.fr>
* GitHub mirror: <https://github.com/cran/activAnalyzer>

Run `revdepcheck::revdep_details(, "activAnalyzer")` for more info

## In both

*   checking DESCRIPTION meta-information ... NOTE
     ```
       Missing dependency on R >= 4.1.0 because package code uses the pipe
       |> or function shorthand \(...) syntax added in R 4.1.0.
       File(s) using such syntax:
         ‘compute_accumulation_metrics.R’
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

# arkdb (0.0.18)

* GitHub: <https://github.com/ropensci/arkdb>
* Email: <mailto:cboettig@gmail.com>
* GitHub mirror: <https://github.com/cran/arkdb>

Run `revdepcheck::revdep_details(, "arkdb")` for more info

## In both

*   checking tests ...
     ```
     ...
       > 
       > test_check("arkdb")
       [1] "Testing using backend duckdb_connection"
       Saving _problems/test-streamable-44.R
       [ FAIL 1 | WARN 6 | SKIP 8 | PASS 53 ]
       
       ══ Skipped tests (8) ═══════════════════════════════════════════════════════════
       • On CRAN (6): 'test-arkdb.R:287:3', 'test-bulk-import.R:6:3',
         'test-bulk-import.R:72:3', 'test-errors.R:12:3', 'test-errors.R:34:3',
         'test-errors.R:53:3'
       • {MonetDBLite} is not installed (2): 'test-arkdb.R:132:3',
         'test-local_db.R:24:3'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-streamable.R:44:3'): streamable_vroom ──────────────────────────
       Error in `write_tsv(x = x, path = path, append = omit_header)`: unused argument (path = path)
       Backtrace:
           ▆
        1. └─arkdb (local) test_stream(streamable_vroom()) at test-streamable.R:44:3
        2.   └─stream$write(data, con, omit_header = FALSE) at test-streamable.R:12:3
       
       [ FAIL 1 | WARN 6 | SKIP 8 | PASS 53 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# bamm (0.5.0)

* GitHub: <https://github.com/luismurao/bamm>
* Email: <mailto:luismurao@gmail.com>
* GitHub mirror: <https://github.com/cran/bamm>

Run `revdepcheck::revdep_details(, "bamm")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     Namespaces in Imports field not imported from:
       ‘crosstalk’ ‘plotly’
       All declared Imports should be used.
     ```

# baseballr (1.6.0)

* GitHub: <https://github.com/BillPetti/baseballr>
* Email: <mailto:saiem.gilani@gmail.com>
* GitHub mirror: <https://github.com/cran/baseballr>

Run `revdepcheck::revdep_details(, "baseballr")` for more info

## In both

*   checking DESCRIPTION meta-information ... NOTE
     ```
       Missing dependency on R >= 4.1.0 because package code uses the pipe
       |> or function shorthand \(...) syntax added in R 4.1.0.
       File(s) using such syntax:
         ‘chadwick_installation.R’
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

# bonsai (0.4.0)

* GitHub: <https://github.com/tidymodels/bonsai>
* Email: <mailto:emil.hvitfeldt@posit.co>
* GitHub mirror: <https://github.com/cran/bonsai>

Run `revdepcheck::revdep_details(, "bonsai")` for more info

## In both

*   R CMD check timed out


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

# broom.mixed (0.2.9.6)

* GitHub: <https://github.com/bbolker/broom.mixed>
* Email: <mailto:bolker@mcmaster.ca>
* GitHub mirror: <https://github.com/cran/broom.mixed>

Run `revdepcheck::revdep_details(, "broom.mixed")` for more info

## In both

*   checking DESCRIPTION meta-information ... NOTE
     ```
       Missing dependency on R >= 4.1.0 because package code uses the pipe
       |> or function shorthand \(...) syntax added in R 4.1.0.
       File(s) using such syntax:
         ‘glmm_tidiers.R’ ‘rstanarm_tidiers.Rd’
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

# ceRNAnetsim (1.22.0)

* GitHub: <https://github.com/selcenari/ceRNAnetsim>
* Email: <mailto:selcenarii@gmail.com>

Run `revdepcheck::revdep_details(, "ceRNAnetsim")` for more info

## In both

*   checking R code for possible problems ... NOTE
     ```
     find_node_perturbation: no visible binding for global variable
       ‘perturbation_efficiency’
     find_node_perturbation: no visible binding for global variable
       ‘perturbed_count’
     simulate: no visible binding for global variable ‘avg_count_current’
     simulate: no visible binding for global variable ‘avg_count_pre’
     Undefined global functions or variables:
       avg_count_current avg_count_pre perturbation_efficiency
       perturbed_count
     ```

# Certara.RsNLME.ModelExecutor (3.0.2)

* Email: <mailto:james.craig@certara.com>
* GitHub mirror: <https://github.com/cran/Certara.RsNLME.ModelExecutor>

Run `revdepcheck::revdep_details(, "Certara.RsNLME.ModelExecutor")` for more info

## In both

*   checking R code for possible problems ... NOTE
     ```
     .run_shiny_RsNLME : server: no visible global function definition for
       ‘addTablesToColumnMapping’
     Undefined global functions or variables:
       addTablesToColumnMapping
     ```

# chevreulShiny (1.2.0)

* GitHub: <https://github.com/cobriniklab/chevreulShiny>
* Email: <mailto:kevin.stachelek@gmail.com>

Run `revdepcheck::revdep_details(, "chevreulShiny")` for more info

## In both

*   checking DESCRIPTION meta-information ... NOTE
     ```
     License stub is invalid DCF.
     ```

# ChromSCape (1.20.0)

* GitHub: <https://github.com/vallotlab/ChromSCape>
* Email: <mailto:pacome.pr@gmail.com>

Run `revdepcheck::revdep_details(, "ChromSCape")` for more info

## In both

*   checking dependencies in R code ... WARNING
     ```
     'loadNamespace' or 'requireNamespace' call not declared from: ‘flexdashboard’
     ```

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
       ‘genes’
     plot_percent_active_feature_scExp: no visible binding for global
       variable ‘group’
     plot_percent_active_feature_scExp: no visible binding for global
       variable ‘percent_active’
     plot_pie_most_contributing_chr: no visible binding for global variable
       ‘absolute_value’
     plot_reduced_dim_scExp: no visible binding for global variable ‘V1’
     plot_reduced_dim_scExp: no visible binding for global variable ‘V2’
     plot_reduced_dim_scExp: no visible binding for global variable
       ‘cluster’
     plot_top_TF_scExp: no visible binding for global variable ‘TF’
     rebin_helper: no visible binding for global variable ‘new_row’
     rebin_helper: no visible binding for global variable ‘origin_value’
     rebin_matrix: no visible binding for global variable ‘group’
     subset_bam_call_peaks: no visible binding for global variable
       ‘merged_bam’
     Undefined global functions or variables:
       CheA3_TF_nTargets Component Fri_cyto Gain_or_Loss Gene TF V1 V2
       absolute_value cluster clusterConsensus cytoBand files_dir_list genes
       group head k merged_bam molecule ncells new_row orientation
       origin_value percent_active run_tsne sample_id total_counts
     Consider adding
       importFrom("utils", "head")
     to your NAMESPACE file.
     ```

# clustermq (0.9.9)

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

# ClustIRR (1.8.0)

* GitHub: <https://github.com/snaketron/ClustIRR>
* Email: <mailto:simokitanovski@gmail.com>

Run `revdepcheck::revdep_details(, "ClustIRR")` for more info

## In both

*   checking DESCRIPTION meta-information ... NOTE
     ```
     Package listed in more than one of Depends, Imports, Suggests, Enhances:
       ‘ggplot2’
     A package should be listed in only one of these fields.
     ```

*   checking R code for possible problems ... NOTE
     ```
     get_ag_gene_hits: no visible binding for global variable ‘cells’
     get_ag_gene_hits: no visible binding for global variable ‘clones’
     get_ag_gene_hits: no visible binding for global variable ‘community’
     get_ag_gene_hits: no visible binding for global variable ‘ag’
     get_ag_species_hits: no visible binding for global variable ‘cells’
     get_ag_species_hits: no visible binding for global variable ‘clones’
     get_ag_species_hits: no visible binding for global variable ‘community’
     get_ag_species_hits: no visible binding for global variable ‘ag’
     get_beta_violin: no visible binding for global variable ‘spec’
     get_beta_violin: no visible binding for global variable ‘size’
     get_honeycombs: no visible binding for global variable ‘x_adj’
     get_honeycombs: no visible binding for global variable ‘y_adj’
     get_honeycombs: no visible binding for global variable ‘..count..’
     Undefined global functions or variables:
       ..count.. ag cells clones community size spec x_adj y_adj
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

# cSEM (0.6.1)

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

# ctsem (3.10.6)

* GitHub: <https://github.com/cdriveraus/ctsem>
* Email: <mailto:charles.driver2@uzh.ch>
* GitHub mirror: <https://github.com/cran/ctsem>

Run `revdepcheck::revdep_details(, "ctsem")` for more info

## In both

*   checking whether package ‘ctsem’ can be installed ... WARNING
     ```
     Found the following significant warnings:
       Warning: namespace ‘colorspace’ is not available and has been replaced
     See ‘/scratch/henrik/revdep/globals/checks/ctsem/new/ctsem.Rcheck/00install.out’ for details.
     ```

*   checking re-building of vignette outputs ... WARNING
     ```
     ...
       ...
     --- re-building ‘hierarchicalmanual.rnw’ using knitr_notangle
     Warning in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  :
       texi2dvi script/program not available, using emulation
     Error: processing vignette 'hierarchicalmanual.rnw' failed with diagnostics:
     unable to run pdflatex on 'hierarchicalmanual.tex'
     LaTeX errors:
     ! LaTeX Error: File `apacite.sty' not found.
     
     Type X to quit or <RETURN> to proceed,
     or enter new name. (Default extension: sty)
     
     ! Emergency stop.
     <read *> 
              
     l.62 \bibliographystyle
                            {apacite}     % Set bibliography style^^M
     !  ==> Fatal error occurred, no output PDF file produced!
     --- failed re-building ‘hierarchicalmanual.rnw’
     
     SUMMARY: processing the following file failed:
       ‘hierarchicalmanual.rnw’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

# cuda.ml (0.3.2)

* GitHub: <https://github.com/mlverse/cuda.ml>
* Email: <mailto:daniel@rstudio.com>
* GitHub mirror: <https://github.com/cran/cuda.ml>

Run `revdepcheck::revdep_details(, "cuda.ml")` for more info

## In both

*   checking Rd files ... NOTE
     ```
     ...
            | ^
     checkRd: (-1) cuda_ml_tsvd.Rd:40: Lost braces; missing escapes or markup?
         40 | {"off", "critical", "error", "warn", "info", "debug", "trace"}.
            | ^
     checkRd: (-1) cuda_ml_umap.Rd:51: Lost braces; missing escapes or markup?
         51 | one of {"spectral", "random"}. Default: "spectral".}
            |        ^
     checkRd: (-1) cuda_ml_umap.Rd:91: Lost braces; missing escapes or markup?
         91 | Must be one of {"categorical", "euclidean"}. Default: "categorical".}
            |                ^
     checkRd: (-1) cuda_ml_umap.Rd:109: Lost braces; missing escapes or markup?
        109 | {"off", "critical", "error", "warn", "info", "debug", "trace"}.
            | ^
     checkRd: (-1) has_cuML.Rd:5: Lost braces; missing escapes or markup?
          5 | \title{Determine whether {cuda.ml} was linked to a valid version of the RAPIDS cuML
            |                          ^
     checkRd: (-1) has_cuML.Rd:15: Lost braces; missing escapes or markup?
         15 | Determine whether {cuda.ml} was linked to a valid version of the RAPIDS cuML
            |                   ^
     checkRd: (-1) has_cuML.Rd:11: Lost braces; missing escapes or markup?
         11 | A logical value indicating whether the current installation {cuda.ml}
            |                                                             ^
     checkRd: (-1) predict.cuda_ml_rand_forest.Rd:30: Lost braces; missing escapes or markup?
         30 | {"off", "critical", "error", "warn", "info", "debug", "trace"}.
            | ^
     ```

# dar (1.6.0)

* GitHub: <https://github.com/MicrobialGenomics-IrsicaixaOrg/dar>
* Email: <mailto:fcatala@irsicaixa.es>

Run `revdepcheck::revdep_details(, "dar")` for more info

## In both

*   checking examples ... ERROR
     ```
     ...
     > 
     > ## Create a Recipe with steps
     > rec <- 
     +   recipe(metaHIV_phy, "RiskGroup2", "Species") |>
     +   step_subset_taxa(tax_level = "Kingdom", taxa = c("Bacteria", "Archaea")) |>
     +   step_filter_taxa(.f = "function(x) sum(x > 0) >= (0.3 * length(x))") |>
     +   step_filter_by_prevalence(0.4) |>
     +   step_maaslin()
     ℹ 1 package is needed for step_maaslin() and is not installed: (Maaslin2)
     • Start a clean R session then run: BiocManager::install(c("Maaslin2"))
     >  
     > ## Prep Recipe   
     > rec <- prep(rec, parallel = TRUE)
     ℹ 1 package is needed for step_maaslin() and is not installed: (Maaslin2)
     • Start a clean R session then run: BiocManager::install(c("Maaslin2"))
     Error in (function (.x, .f, ..., .progress = FALSE)  : ℹ In index: 1.
     Caused by error in `purrr::map()`:
     ℹ In index: 1.
     ℹ With name: RiskGroup2.
     Caused by error in `map()`:
     ℹ In index: 1.
     Caused by error in `loadNamespace()`:
     ! there is no package called ‘Maaslin2’
     Calls: prep ... furrr_map_template -> furrr_template -> <Anonymous> -> value.list
     Execution halted
     ```

*   checking tests ...
     ```
     ...
        77. ├─purrr::pluck(., "results")
        78. │ └─purrr:::pluck_raw(.x, list2(...), .default = .default)
        79. ├─base::loadNamespace(x)
        80. │ ├─base::withRestarts(stop(cond), retry_loadNamespace = function() NULL)
        81. │ │ └─base (local) withOneRestart(expr, restarts[[1L]])
        82. │ │   └─base (local) doWithOneRestart(return(expr), restart)
        83. │ └─base::stop(cond)
        84. ├─purrr (local) `<fn>`(`<pckgNtFE>`)
        85. │ └─cli::cli_abort(...)
        86. │   └─rlang::abort(...)
        87. │     └─rlang:::signal_abort(cnd, .file)
        88. │       └─base::signalCondition(cnd)
        89. ├─purrr (local) `<fn>`(`<prrr_rr_>`)
        90. │ └─cli::cli_abort(...)
        91. │   └─rlang::abort(...)
        92. │     └─rlang:::signal_abort(cnd, .file)
        93. │       └─base::signalCondition(cnd)
        94. └─purrr (local) `<fn>`(`<prrr_rr_>`)
        95.   └─cli::cli_abort(...)
        96.     └─rlang::abort(...)
       
       [ FAIL 2 | WARN 3 | SKIP 8 | PASS 95 ]
       Error:
       ! Test failures.
       Execution halted
     ```

*   checking re-building of vignette outputs ... ERROR
     ```
     ...
      59. ├─purrr (local) `<fn>`(`<prrr_rr_>`)
      60. │ └─cli::cli_abort(...)
      61. │   └─rlang::abort(...)
      62. │     └─rlang:::signal_abort(cnd, .file)
      63. │       └─base::signalCondition(cnd)
      64. └─base (local) `<fn>`(`<prrr_rr_>`)
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     
     Error: processing vignette 'import_export_recipes.Rmd' failed with diagnostics:
     error in evaluating the argument 'rec' in selecting a method for function 'bake': ℹ In index: 1.
     Caused by error in `purrr::map()`:
     ℹ In index: 1.
     ℹ With name: RiskGroup2.
     Caused by error in `map()`:
     ℹ In index: 1.
     Caused by error in `loadNamespace()`:
     ! there is no package called 'Maaslin2'
     --- failed re-building ‘import_export_recipes.Rmd’
     
     SUMMARY: processing the following files failed:
       ‘article.Rmd’ ‘bioinformatics_vignette.Rmd’ ‘dar.Rmd’
       ‘import_export_recipes.Rmd’
     
     Error: Vignette re-building failed.
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

# disk.frame (0.8.3)

* GitHub: <https://github.com/DiskFrame/disk.frame>
* Email: <mailto:zhuojia.dai@gmail.com>
* GitHub mirror: <https://github.com/cran/disk.frame>

Run `revdepcheck::revdep_details(, "disk.frame")` for more info

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

# dispositionEffect (1.0.1)

* GitHub: <https://github.com/marcozanotti/dispositionEffect>
* Email: <mailto:zanottimarco17@gmail.com>
* GitHub mirror: <https://github.com/cran/dispositionEffect>

Run `revdepcheck::revdep_details(, "dispositionEffect")` for more info

## In both

*   checking tests ...
     ```
     ...
       ── Failure ('test-realized_duration.R:152:2'): realized_duration works (realized_only = TRUE) ──
       Expected `realized_duration(...)` to equal `c(...)`.
       Differences:
       1/4 mismatches
       [2] 34 - 28 == 6
       ── Failure ('test-realized_duration.R:155:2'): realized_duration works (realized_only = TRUE) ──
       Expected `realized_duration(...)` to equal `c(...)`.
       Differences:
       1/4 mismatches
       [1] 34 - 28 == 6
       ── Failure ('test-realized_duration.R:158:2'): realized_duration works (realized_only = TRUE) ──
       Expected `realized_duration(...)` to equal `c(...)`.
       Differences:
       1/4 mismatches
       [2] 34 - 28 == 6
       ── Failure ('test-realized_duration.R:161:2'): realized_duration works (realized_only = TRUE) ──
       Expected `realized_duration(...)` to equal `c(...)`.
       Differences:
       1/4 mismatches
       [1] 34 - 28 == 6
       
       [ FAIL 36 | WARN 0 | SKIP 0 | PASS 331 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# EFAtools (0.6.1)

* GitHub: <https://github.com/mdsteiner/EFAtools>
* Email: <mailto:markus.d.steiner@gmail.com>
* GitHub mirror: <https://github.com/cran/EFAtools>

Run `revdepcheck::revdep_details(, "EFAtools")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     Namespace in Imports field not imported from: ‘progress’
       All declared Imports should be used.
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
     See ‘/scratch/henrik/revdep/globals/checks/envi/new/envi.Rcheck/00install.out’ for details.
     ```

# evalITR (1.0.0)

* GitHub: <https://github.com/MichaelLLi/evalITR>
* Email: <mailto:mili@hbs.edu>
* GitHub mirror: <https://github.com/cran/evalITR>

Run `revdepcheck::revdep_details(, "evalITR")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     Namespaces in Imports field not imported from:
       ‘forcats’ ‘rqPen’ ‘utils’
       All declared Imports should be used.
     ```

# fastRhockey (0.4.0)

* GitHub: <https://github.com/sportsdataverse/fastRhockey>
* Email: <mailto:saiem.gilani@gmail.com>
* GitHub mirror: <https://github.com/cran/fastRhockey>

Run `revdepcheck::revdep_details(, "fastRhockey")` for more info

## In both

*   checking Rd files ... NOTE
     ```
     checkRd: (-1) update_nhl_db.Rd:51-53: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) update_nhl_db.Rd:54-57: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) update_phf_db.Rd:51-53: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) update_phf_db.Rd:54-57: Lost braces in \itemize; meant \describe ?
     ```

# flowGraph (1.18.0)

* GitHub: <https://github.com/aya49/flowGraph>
* Email: <mailto:aya43@sfu.ca>

Run `revdepcheck::revdep_details(, "flowGraph")` for more info

## In both

*   checking R code for possible problems ... NOTE
     ```
     get_child: no visible binding for global variable ‘no_cores’
     get_paren: no visible binding for global variable ‘no_cores’
     ms_psig: no visible binding for global variable ‘meta’
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

# fmeffects (0.1.4)

* GitHub: <https://github.com/holgstr/fmeffects>
* Email: <mailto:hbj.loewe@gmail.com>
* GitHub mirror: <https://github.com/cran/fmeffects>

Run `revdepcheck::revdep_details(, "fmeffects")` for more info

## In both

*   checking re-building of vignette outputs ... ERROR
     ```
     ...
      50. │                   └─fmeffects (local) simpson(prediction.s, subintervals)
      51. │                     └─fmeffects (local) f(0/s + m)
      52. │                       └─predictor$predict(observation.t)
      53. │                         ├─data.table::as.data.table(self$model$predict_newdata(newdata))
      54. │                         └─self$model$predict_newdata(newdata)
      55. │                           └─mlr3:::.__Learner__predict_newdata(...)
      56. └─mlr3 (local) `<fn>`(base::quote(`<named list>`))
      57.   └─mlr3:::.__Task__col_roles(...)
      58.     └─checkmate::assert_names(names(rhs), "unique", permutation.of = mlr_reflections$task_col_roles[[self$task_type]])
      59.       └─checkmate::makeAssertion(x, res, .var.name, add)
      60.         └─checkmate:::mstop(...)
      61.           └─base::stop(simpleError(sprintf(msg, ...), call.))
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     
     Error: processing vignette 'fmeffects.Rmd' failed with diagnostics:
     ℹ In index: 1.
     Caused by error in `.__Task__col_roles()`:
     ! Assertion on 'names(rhs)' failed: Names must be a permutation of set {'feature','target','name','order','stratum','group','offset','weights_learner','weights_measure'}, but has extra elements {'always_included'}.
     --- failed re-building ‘fmeffects.Rmd’
     
     SUMMARY: processing the following file failed:
       ‘fmeffects.Rmd’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

# forecastML (0.9.0)

* GitHub: <https://github.com/nredell/forecastML>
* Email: <mailto:nickalusredell@gmail.com>
* GitHub mirror: <https://github.com/cran/forecastML>

Run `revdepcheck::revdep_details(, "forecastML")` for more info

## In both

*   checking re-building of vignette outputs ... ERROR
     ```
     ...
     ---
     Backtrace:
         ▆
      1. ├─base::summary(model_results_cv$horizon_1$window_1$model)
      2. └─base::summary.default(model_results_cv$horizon_1$window_1$model)
      3.   └─base::array(...)
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     
     Error: processing vignette 'grouped_forecast.Rmd' failed with diagnostics:
     length of 'dimnames' [1] not equal to array extent
     --- failed re-building ‘grouped_forecast.Rmd’
     
     --- re-building ‘lagged_features.Rmd’ using rmarkdown
     [WARNING] Deprecated: --highlight-style. Use --syntax-highlighting instead.
     --- finished re-building ‘lagged_features.Rmd’
     
     --- re-building ‘package_overview.Rmd’ using rmarkdown
     [WARNING] Deprecated: --highlight-style. Use --syntax-highlighting instead.
     --- finished re-building ‘package_overview.Rmd’
     
     SUMMARY: processing the following file failed:
       ‘grouped_forecast.Rmd’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

*   checking dependencies in R code ... NOTE
     ```
     Namespace in Imports field not imported from: ‘dtplyr’
       All declared Imports should be used.
     ```

# GeDS (0.3.3)

* GitHub: <https://github.com/emilioluissaenzguillen/GeDS>
* Email: <mailto:Emilio.Saenz-Guillen@citystgeorges.ac.uk>
* GitHub mirror: <https://github.com/cran/GeDS>

Run `revdepcheck::revdep_details(, "GeDS")` for more info

## In both

*   checking whether package ‘GeDS’ can be installed ... WARNING
     ```
     Found the following significant warnings:
       Warning: no DISPLAY variable so Tk is not available
     See ‘/scratch/henrik/revdep/globals/checks/GeDS/new/GeDS.Rcheck/00install.out’ for details.
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

*   checking examples ... ERROR
     ```
     ...
     20. cli::cli_alert_danger(cnd)
     21. cli:::cli__message("alert_danger", list(text = glue_cmd(text, .envir = .envir, …
     22. "id" %in% names(args)
     23. cli:::glue_cmd(text, .envir = .envir, .call = sys.call())
     24. cli:::glue(str, .envir = .envir, .transformer = transformer, .cli = TRUE, …
     25. (function (expr) …
     26. .transformer(expr, .envir) %||% character()
     27. local .transformer(expr, .envir)
     28. eval(expr, envir = envir) %??% cli_error(call. = caller, "Could not evalua…
     29. cli:::chain_error(expr, err, srcref = utils::getSrcref(sys.call()))
     30. | base::withCallingHandlers({ …
     31. base::eval(expr, envir = envir)
     32. base::eval(expr, envir = envir)
     33. req_perform(request) %>% resp_body_string()
     34. httr2::resp_body_string(.)
     35. httr2:::check_response(resp)
     36. httr2:::is_response(resp)
     37. httr2::req_perform(request)
     38. httr2:::handle_resp(req, resp, error_call = error_call)
     39. rlang::cnd_signal(cnd)
     40. rlang:::signal_abort(cnd)
     41. base::signalCondition(cnd)
     42. | (function (e) …
     43. | cli:::throw_error(err, parent = e)
     Execution halted
     ```

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

*   checking Rd files ... NOTE
     ```
     checkRd: (-1) corrApp.Rd:40: Escaped LaTeX specials: \&
     checkRd: (-1) crdApp.Rd:46: Escaped LaTeX specials: \&
     checkRd: (-1) descApp.Rd:55: Escaped LaTeX specials: \&
     checkRd: (-1) layoutApp.Rd:50: Escaped LaTeX specials: \&
     checkRd: (-1) rbdApp.Rd:46: Escaped LaTeX specials: \&
     checkRd: (-1) ttApp.Rd:43: Escaped LaTeX specials: \&
     ```

# greenSD (0.1.1)

* GitHub: <https://github.com/billbillbilly/greenSD>
* Email: <mailto:xiaohaoy111@gmail.com>
* GitHub mirror: <https://github.com/cran/greenSD>

Run `revdepcheck::revdep_details(, "greenSD")` for more info

## In both

*   checking examples ... ERROR
     ```
     ...
     1008                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           Boca del R\x92o, La Antigua, Manlio Fabio Altamirano, Medell\x92n, Veracruz
     1009                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    Matamoros, Cameron
     1010                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       Amozoc, Atlixco, Coronango, Cuautinch\x87n, Cuautlancingo, Juan C. Bonilla, Nealtican, Ocoyucan, Puebla, San Andr\x8es Cholula, San Gregorio Atzompa, San Jer\x97nimo Tecuanipan, San Miguel Xoxtla, San Pedro Cholula, Santa Isabel Cholula, Tianguismanalco, Tlaltenango, Nat\x92vitas, Tepetitla de Lardiz\x87bal, Zacatelco
     1011                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        R\x92o Bravo, Reynosa, Hidalgo
     1012                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              Pachuca de Soto, San Agust\x92n Tlaxiaca
     1013                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                Alvaro Obreg\x97n, Azcapotzalco, Benito Ju\x87rez, Coyoac\x87n, Cuajimalpa de Morelos, Cuauht\x8emoc, Gustavo A. Madero, Iztacalco, Iztapalapa, Magdalena Contreras, Miguel Hidalgo, Tl\x87huac, Tlalpan, Venustiano Carranza, Xochimilco, Acolman, Atenco, Atizap\x87n de Zaragoza, Chalco, Chicoloapan, Chimalhuac\x87n, Coacalco de Berrioz\x87bal, Coyotepec, Cuautitl\x87n Izcalli, Cuautitl\x87n, Ecatepec de Morelos, Huehuetoca, Huixquilucan, Isidro Fabela, Ixtapaluca, Jaltenco, Jilotzingo, La Paz, Melchor Ocampo, Naucalpan de Ju\x87rez, Nextlalpan, Nezahualc\x97yotl, Nicol\x87s Romero, Tec\x87mac, Teoloyuc\x87n, Teotihuac\x87n, Tepotzotl\x87n, Texcoco, Timilpan, Tlalnepantla, Tultepec, Tultitl\x87n, Zumpango
     1014                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    Cuernavaca, Huitzilac, Jiutepec, Miacatl\x87n, Temixco, Xochitepec
     1015                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                Almoloya de Ju\x87rez, Lerma, Otzolotepec, Temoaya, Toluca, Xonacatl\x87n, Zinacatepec
     1016                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         Apodaca, Carmen, Garc\x92a, General Escobedo, Guadalupe, Ju\x87rez, Monterrey, Pesquer\x92a, San Nicol\x87s de los Garza, San Pedro Garza Garc\x92a, Santa Catarina, Santiago
     1017                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              Corregidora, El Marqu\x8es, Quer\x8etaro
     1018                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       Arteaga, Ramos Arizpe, Saltillo
     1019                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    Mexquitic de Carmona, San Luis Potos\x92, Soledad de Graciano S\x87nchez, Villa de Reyes, Zaragoza
     1020                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               Le\x97n
     1021                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     Aguascalientes, Jes\x9cs Mar\x92a
     1022                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            El Salto, Guadalajara, Ixtlahuac\x87n del R\x92o, Tlajomulco de Z\x9c\x96iga, Tlaquepaque, Tonal\x87, Zapopan, Zapotlanejo
     1023                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                Matamoros, Torre\x97n, Viesca, G\x97mez Palacio, Lerdo
     1024                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          Aquiles Serd\x87n, Chihuahua
     1025                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    Ju\x87rez, El Paso
     1026                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            Hermosillo
     1027                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    Mexicali, Imperial
     1028                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    Tijuana, San Diego
     > boundary <- check_urban_boundary(uid = 11)
     Warning: GDAL/OGR not compiled with libcurl support, remote requests not supported. (GDAL error 6)
     Error: Cannot open "https://raw.githubusercontent.com/billbillbilly/greenSD/main/scripts/city_urban_boundaries.geojson"; The file doesn't seem to exist.
     Execution halted
     ```

# hero (0.6)

* Email: <mailto:joshua.french@ucdenver.edu>
* GitHub mirror: <https://github.com/cran/hero>

Run `revdepcheck::revdep_details(, "hero")` for more info

## In both

*   checking Rd files ... NOTE
     ```
     checkRd: (-1) hero.Rd:67-68: Lost braces
         67 | then \code{\link[pbapply]{pblapply}} is used. If code{package ==
            |                                                      ^
     checkRd: (-1) hero.Rd:69: Lost braces
         69 | code{package == "Rmpi"}, then \code{\link[Rmpi]{mpi.applyLB}} is used.}
            |     ^
     ```

# igvShiny (1.6.0)

* GitHub: <https://github.com/gladkia/igvShiny>
* Email: <mailto:gladki.arkadiusz@gmail.com>

Run `revdepcheck::revdep_details(, "igvShiny")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     Unexported object imported by a ':::' call: ‘BiocGenerics:::testPackage’
       See the note in ?`:::` about the use of this operator.
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

# infercnv (1.26.0)

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

# InPAS (2.18.1)

* Email: <mailto:jou@morgridge.org>

Run `revdepcheck::revdep_details(, "InPAS")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     There are ::: calls to the package's namespace in its code. A package
       almost never needs to use ::: for its own objects:
       ‘adjust_distalCPs’ ‘adjust_proximalCPs’ ‘adjust_proximalCPsByNBC’
       ‘adjust_proximalCPsByPWM’ ‘calculate_mse’ ‘find_valleyBySpline’
       ‘get_PAscore’ ‘get_PAscore2’ ‘remove_convergentUTR3s’
       ‘search_distalCPs’ ‘search_proximalCPs’
     ```

*   checking Rd metadata ... NOTE
     ```
     Invalid package aliases in Rd file 'InPAS.Rd':
       ‘-package’
     ```

*   checking Rd \usage sections ... NOTE
     ```
     Documented arguments not in \usage in Rd file 'get_UTR3TotalCov.Rd':
       ‘gcCompensationensation’
     
     Functions with \usage entries need to have the appropriate \alias
     entries, and all their arguments documented.
     The \usage entries must correspond to syntactically valid R code.
     See chapter ‘Writing R documentation files’ in the ‘Writing R
     Extensions’ manual.
     ```

# ISAnalytics (1.20.0)

* GitHub: <https://github.com/calabrialab/ISAnalytics>
* Email: <mailto:gazzo.francesco@hsr.it>

Run `revdepcheck::revdep_details(, "ISAnalytics")` for more info

## In both

*   checking tests ...
     ```
     ...
       > test_check("ISAnalytics")
       Loading required namespace: plotly
       Loading required namespace: rmarkdown
       [WARNING] Deprecated: --highlight-style. Use --syntax-highlighting instead.
       Report correctly saved
       i Report saved to: /scratch/henrik/1020031/RtmplnCRza/file230ccf29f37bad/2026-01-31_collision_removal_report.html
       Saving _problems/test-population-size-estimate-631.R
       [WARNING] Deprecated: --highlight-style. Use --syntax-highlighting instead.
       Report correctly saved
       i Report saved to: /scratch/henrik/1020031/RtmplnCRza/file230ccf7fce8999/2026-01-31_outlier_test_pool_fragments_report.html
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 832 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-population-size-estimate.R:605:5'): .re_agg_and_estimate works as expected - less tps ──
       Error: Invalid index: out of bounds
       Backtrace:
           ▆
        1. └─ISAnalytics:::.re_agg_and_estimate(...) at test-population-size-estimate.R:605:5
        2.   ├─groups_dfs[[i]]
        3.   └─vctrs:::`[[.vctrs_list_of`(groups_dfs, i)
       
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 832 ]
       Error:
       ! Test failures.
       Execution halted
     ```

*   checking whether package ‘ISAnalytics’ can be installed ... WARNING
     ```
     Found the following significant warnings:
       Warning: replacing previous import ‘bslib::show_toast’ by ‘shinyWidgets::show_toast’ when loading ‘ISAnalytics’
     See ‘/scratch/henrik/revdep/globals/checks/ISAnalytics/new/ISAnalytics.Rcheck/00install.out’ for details.
     ```

*   checking Rd files ... NOTE
     ```
     checkRd: (-1) refGenes_hg19.Rd:21: Lost braces; missing escapes or markup?
         21 | \item Download from {http://hgdownload.soe.ucsc.edu/goldenPath/hg19/database/}
            |                     ^
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

# lavDiag (0.1.0)

* GitHub: <https://github.com/reckak/lavDiag>
* Email: <mailto:reckak@mail.muni.cz>
* GitHub mirror: <https://github.com/cran/lavDiag>

Run `revdepcheck::revdep_details(, "lavDiag")` for more info

## In both

*   checking tests ...
     ```
     ...
         6. │     └─furrr:::furrr_template(...)
         7. │       ├─future::nbrOfWorkers()
         8. │       └─future:::nbrOfWorkers.NULL()
         9. │         └─future::plan("backend")
        10. │           └─future:::plan_init(strategy, debug = debug)
        11. │             └─future:::makeFutureBackend(evaluator, debug = debug)
        12. │               └─base::do.call(factory, args = args, envir = envir)
        13. └─future (local) `<fn>`(workers = 255L)
        14.   └─future::ClusterFutureBackend(...)
        15.     └─clusterRegistry$startCluster(...)
        16.       └─future (local) makeCluster(workers, ...)
        17.         ├─base::do.call(makeClusterPSOCK, args = args, quote = TRUE)
        18.         └─parallelly (local) `<fn>`(base::quote(255L), rscript_libs = base::quote(`<chr>`))
        19.           └─parallelly:::stopf(msg)
       ── Error ('test-prepare.R:12:3'): prepare merges branches for mixed model ──────
       Error in `prepare(fit, length.out = 15)`: Neither continuous nor ordinal branch succeeded - check model/functions.
       Backtrace:
           ▆
        1. └─lavDiag::prepare(fit, length.out = 15) at test-prepare.R:12:3
        2.   └─rlang::abort("Neither continuous nor ordinal branch succeeded - check model/functions.")
       
       [ FAIL 3 | WARN 26 | SKIP 1 | PASS 28 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# ldmppr (1.1.1)

* GitHub: <https://github.com/lanedrew/ldmppr>
* Email: <mailto:lanetdrew@gmail.com>
* GitHub mirror: <https://github.com/cran/ldmppr>

Run `revdepcheck::revdep_details(, "ldmppr")` for more info

## In both

*   R CMD check timed out


# ldsr (0.0.2)

* GitHub: <https://github.com/ntthung/ldsr>
* Email: <mailto:ntthung@gmail.com>
* GitHub mirror: <https://github.com/cran/ldsr>

Run `revdepcheck::revdep_details(, "ldsr")` for more info

## In both

*   checking C++ specification ... NOTE
     ```
       Specified C++11: please drop specification unless essential
     ```

# MAI (1.16.0)

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

# mapme.biodiversity (0.9.5)

* GitHub: <https://github.com/mapme-initiative/mapme.biodiversity>
* Email: <mailto:sven.bergtold@gmail.com>
* GitHub mirror: <https://github.com/cran/mapme.biodiversity>

Run `revdepcheck::revdep_details(, "mapme.biodiversity")` for more info

## In both

*   checking tests ...
     ```
     ...
         'test-get_carbon.R:2:3', 'test-get_carbon.R:29:3', 'test-get_chelsa.R:2:3',
         'test-get_esalandcover.R:2:3', 'test-get_fritz_et_al.R:2:3',
         'test-get_gfw_emissions.R:2:3', 'test-get_gfw_lossyear.R:2:3',
         'test-get_gfw_treecover.R:7:3', 'test-get_gmw.R:2:3', 'test-get_gsw.R:2:3',
         'test-get_hfp.R:10:3', 'test-get_mcd64A1.R:2:3', 'test-get_nasa_grace.R:2:3',
         'test-get_nasa_srtm.R:2:3', 'test-get_nelson_et_al.R:2:3',
         'test-get_resources.R:2:3', 'test-get_soilgrids.R:2:3',
         'test-get_teow.R:2:3', 'test-get_ucdp_ged.R:3:3', 'test-get_worldpop.R:2:3',
         'test-ipbes.R:2:3', 'test-ipbes.R:11:3'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Failure ('test-chunking.R:7:3'): .crosses_dateline and .split_dateline works ──
       Expected `x2 <- .split_dateline(x)` to run silently.
       Actual noise: warnings.
       ── Failure ('test-chunking.R:8:3'): .crosses_dateline and .split_dateline works ──
       Expected `nrow(x2)` to equal 2.
       Differences:
         `actual`: 1.0
       `expected`: 2.0
       
       
       [ FAIL 2 | WARN 0 | SKIP 43 | PASS 543 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# mbbe (0.1.0)

* GitHub: <https://github.com/certara/mbbe>
* Email: <mailto:mark.sale@certara.com>
* GitHub mirror: <https://github.com/cran/mbbe>

Run `revdepcheck::revdep_details(, "mbbe")` for more info

## In both

*   checking tests ...
     ```
     ...
       > # * https://testthat.r-lib.org/articles/special-files.html
       > 
       > library(testthat)
       > library(mbbe)
       > 
       > test_check("mbbe")
       Saving _problems/test-check_requirements-52.R
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 11 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-check_requirements.R:39:3'): check_requirements works ──────────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-check_requirements.R:39:3
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       
       [ FAIL 1 | WARN 0 | SKIP 0 | PASS 11 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# mikropml (1.7.0)

* GitHub: <https://github.com/SchlossLab/mikropml>
* Email: <mailto:sovacool@umich.edu>
* GitHub mirror: <https://github.com/cran/mikropml>

Run `revdepcheck::revdep_details(, "mikropml")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     Namespace in Imports field not imported from: ‘methods’
       All declared Imports should be used.
     ```

# MineICA (1.49.0)

* Email: <mailto:anne.biton@gmail.com>

Run `revdepcheck::revdep_details(, "MineICA")` for more info

## In both

*   checking examples ... ERROR
     ```
     ...
     > nodeDescr <- nodeAttrs(nbAn = nbAn, nbComp = nbComp, labComp = labComp,
     +                        labAn = c("toy1","toy2"), file = "nodeInfo.txt")
     > 
     > ## Plot correlation graph, slightly move the attached nodes to make the cliques visible
     > ## use tkplot=TRUE to have an interactive graph
     > res <- plotCorGraph(title = "Compare toy 1 and 2", dataGraph = dataGraph, nodeName = "indComp", tkplot = FALSE,
     +                  nodeAttrs = nodeDescr, edgeWeight = "cor", nodeShape = "labAn", reciproCol = "reciprocal")
     Warning in brewer.pal(nbAn, "Set3") :
       minimal value for n is 3, returning requested palette with 3 different levels
     
     Error:
     ! The `area` argument of `layout_with_fr()` was deprecated in igraph
       0.8.0 and is now defunct.
     Backtrace:
         ▆
      1. └─MineICA::plotCorGraph(...)
      2.   └─igraph::layout.fruchterman.reingold(...)
      3.     ├─igraph:::do_call(layout_with_fr, .args = c(list(...), params))
      4.     │ └─base::eval(call, .env)
      5.     │   └─base::eval(call, .env)
      6.     └─igraph::layout_with_fr(...)
      7.       └─lifecycle::deprecate_stop("0.8.0", "layout_with_fr(area = )")
      8.         └─lifecycle:::deprecate_stop0(msg)
      9.           └─rlang::cnd_signal(...)
     Execution halted
     ```

*   checking dependencies in R code ... WARNING
     ```
     Namespace in Imports field not imported from: ‘lumiHumanAll.db’
       All declared Imports should be used.
     Packages in Depends field not imported from:
       ‘GOstats’ ‘Hmisc’ ‘JADE’ ‘RColorBrewer’ ‘Rgraphviz’ ‘annotate’
       ‘biomaRt’ ‘cluster’ ‘colorspace’ ‘fastICA’ ‘foreach’ ‘ggplot2’
       ‘graph’ ‘gtools’ ‘igraph’ ‘marray’ ‘mclust’ ‘methods’ ‘plyr’ ‘scales’
       ‘xtable’
       These packages need to be imported from (in the NAMESPACE file)
       for when this namespace is loaded but not attached.
     Missing or unexported object: ‘GOstats::geneIdsByCategory’
     ':::' calls which should be '::':
       ‘Biobase:::annotation<-’ ‘Biobase:::validMsg’ ‘fpc:::pamk’
       ‘lumi:::getChipInfo’ ‘mclust:::adjustedRandIndex’
       See the note in ?`:::` about the use of this operator.
     Unexported object imported by a ':::' call: ‘Biobase:::isValidVersion’
       See the note in ?`:::` about the use of this operator.
     ```

*   checking Rd cross-references ... WARNING
     ```
     Missing link(s) in Rd file 'Alist.Rd':
       ‘class-IcaSet’
     
     Missing link(s) in Rd file 'Slist.Rd':
       ‘class-IcaSet’
     
     Missing link(s) in Rd file 'class-IcaSet.Rd':
       ‘class-IcaSet’
     
     Missing link(s) in Rd file 'getComp.Rd':
       ‘class-IcaSet’
     
     Missing link(s) in Rd file 'runAn.Rd':
       ‘[Category:class-GOHyperGParams]{GOHyperGParams}’
     
     See section 'Cross-references' in the 'Writing R Extensions' manual.
     ```

*   checking for missing documentation entries ... WARNING
     ```
     Undocumented S4 classes:
       ‘MineICAParams’
     All user-level objects in a package (including S4 classes and methods)
     should have documentation entries.
     See chapter ‘Writing R documentation files’ in the ‘Writing R
     Extensions’ manual.
     ```

*   checking re-building of vignette outputs ... WARNING
     ```
     ...
       The `axis.ticks.margin` theme element is not defined in the element hierarchy.
     `geom_smooth()` using formula = 'y ~ x'
     Warning in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  :
       texi2dvi script/program not available, using emulation
     Error: processing vignette 'MineICA.Rnw' failed with diagnostics:
     unable to run pdflatex on 'MineICA.tex'
     LaTeX errors:
     ! LaTeX Error: File `appendix.sty' not found.
     
     Type X to quit or <RETURN> to proceed,
     or enter new name. (Default extension: sty)
     
     ! Emergency stop.
     <read *> 
              
     l.23 \usepackage
                     {subfig}^^M
     !  ==> Fatal error occurred, no output PDF file produced!
     --- failed re-building ‘MineICA.Rnw’
     
     SUMMARY: processing the following file failed:
       ‘MineICA.Rnw’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

*   checking DESCRIPTION meta-information ... NOTE
     ```
     Packages listed in more than one of Depends, Imports, Suggests, Enhances:
       ‘biomaRt’ ‘GOstats’ ‘cluster’ ‘mclust’ ‘igraph’
     A package should be listed in only one of these fields.
     ```

*   checking R code for possible problems ... NOTE
     ```
     ...
       igraph.from.graphNEL kmeans kruskal.test layout
       layout.fruchterman.reingold legend listAttributes listFilters llply
       lm maColorBar maPalette median mtext na.omit new odd order.dendrogram
       p.adjust pam par pdf plot.new points position_jitter pushViewport
       quantile rainbow_hcl rcorr read.table reorder scale_colour_gradientn
       scale_colour_manual scale_fill_manual scale_linetype_manual
       scale_shape_manual scale_x_continuous scale_x_discrete
       scale_y_continuous shapiro.test sigCategories terrain_hcl theme
       theme_bw title tkplot.fit.to.screen unit useMart validObject vcount
       viewport wilcox.test write.table xlab xtable
     Consider adding
       importFrom("grDevices", "cm.colors", "dev.off", "graphics.off",
                  "heat.colors", "pdf")
       importFrom("graphics", "abline", "axis", "frame", "hist", "layout",
                  "legend", "mtext", "par", "plot.new", "points", "title")
       importFrom("methods", "callNextMethod", "new", "validObject")
       importFrom("stats", "aggregate", "as.dendrogram", "as.dist",
                  "as.hclust", "chisq.test", "cor", "cor.test", "cutree",
                  "dist", "hclust", "kmeans", "kruskal.test", "lm", "median",
                  "na.omit", "order.dendrogram", "p.adjust", "quantile",
                  "reorder", "shapiro.test", "wilcox.test")
       importFrom("utils", "capture.output", "combn", "read.table",
                  "write.table")
     to your NAMESPACE file (and ensure that your DESCRIPTION Imports field
     contains 'methods').
     ```

*   checking Rd files ... NOTE
     ```
     ...
            |                                            ^
     checkRd: (-1) clusterFastICARuns.Rd:52: Lost braces
         52 |   item{W}{the estimated unmixing matrix}, \item{Iq}{Iq
            |       ^
     checkRd: (-1) clusterFastICARuns.Rd:52: Lost braces
         52 |   item{W}{the estimated unmixing matrix}, \item{Iq}{Iq
            |          ^
     checkRd: (-1) plotDensOneAnnotInAllComp.Rd:104: Lost braces
        104 |   code{\link{writeHtmlResTestsByAnnot}},
            |       ^
     checkRd: (-1) plotDensOneAnnotInAllComp.Rd:105: Lost braces
        105 |   code{\link{wilcox.test}}, code{\link{kruskal.test}}
            |       ^
     checkRd: (-1) plotDensOneAnnotInAllComp.Rd:105: Lost braces
        105 |   code{\link{wilcox.test}}, code{\link{kruskal.test}}
            |                                 ^
     checkRd: (-1) runICA.Rd:44: Lost braces
         44 |   item{W}{the estimated unmixing matrix}}
            |       ^
     checkRd: (-1) runICA.Rd:44: Lost braces
         44 |   item{W}{the estimated unmixing matrix}}
            |          ^
     checkRd: (-1) writeProjByComp.Rd:38: Lost braces
         38 | their annotations, please remember to modify code{genesPath(params)}, or
            |                                                  ^
     ```

# mistyR (1.18.0)

* GitHub: <https://github.com/saezlab/mistyR>
* Email: <mailto:jovan.tanevski@uni-heidelberg.de>

Run `revdepcheck::revdep_details(, "mistyR")` for more info

## In both

*   checking R code for possible problems ... NOTE
     ```
     ...
       ‘total’
     plot_view_contributions: no visible binding for global variable
       ‘measure’
     plot_view_contributions: no visible binding for global variable
       ‘target’
     plot_view_contributions: no visible binding for global variable
       ‘fraction’
     plot_view_contributions: no visible binding for global variable ‘view’
     run_misty : <anonymous>: no visible binding for global variable ‘p’
     run_misty : <anonymous>: no visible binding for global variable
       ‘intra.RMSE’
     run_misty : <anonymous>: no visible binding for global variable
       ‘multi.RMSE’
     run_misty : <anonymous>: no visible binding for global variable
       ‘intra.R2’
     run_misty : <anonymous>: no visible binding for global variable
       ‘multi.R2’
     svm_model: no visible binding for global variable ‘index’
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

# mlflow (3.6.0)

* GitHub: <https://github.com/mlflow/mlflow>
* Email: <mailto:benjamin.wilson@databricks.com>
* GitHub mirror: <https://github.com/cran/mlflow>

Run `revdepcheck::revdep_details(, "mlflow")` for more info

## In both

*   checking package dependencies ... ERROR
     ```
     Package required but not available: ‘git2r’
     
     See section ‘The DESCRIPTION file’ in the ‘Writing R Extensions’
     manual.
     ```

# mlr3resampling (2025.11.19)

* GitHub: <https://github.com/tdhock/mlr3resampling>
* Email: <mailto:toby.hocking@r-project.org>
* GitHub mirror: <https://github.com/cran/mlr3resampling>

Run `revdepcheck::revdep_details(, "mlr3resampling")` for more info

## In both

*   checking examples ... ERROR
     ```
     ...
             <fctr>        <char>  <int>     <int> <int>          <int>     <int>
     1:       Alice           all     52         1     1             52         1
     2:         Bob           all     52         1     1             52         2
        Train_subsets
               <fctr>
     1:           all
     2:           all
     > mlr3resampling::proj_compute(1, pkg.proj.dir)
     [c4-n43:3299822] OPAL ERROR: Not initialized in file ext2x_client.c at line 112
     --------------------------------------------------------------------------
     The application appears to have been direct launched using "srun",
     but OMPI was not built with SLURM's PMI support and therefore cannot
     execute. There are several options for building PMI support under
     SLURM, depending upon the SLURM version you are using:
     
       version 16.05 or later: you can use SLURM's PMIx support. This
       requires that you configure and build SLURM --with-pmix.
     
       Versions earlier than 16.05: you must use either SLURM's PMI-1 or
       PMI-2 support. SLURM builds PMI-1 by default, or you can manually
       install PMI-2. You must then build Open MPI using --with-pmi pointing
       to the SLURM PMI library location.
     
     Please configure as appropriate and try again.
     --------------------------------------------------------------------------
     ```

*   checking tests ...
     ```
     ...
       > if(require(testthat))test_check("mlr3resampling")
       Loading required package: testthat
       Loading required package: mlr3resampling
       [c4-n43:3303389] OPAL ERROR: Not initialized in file ext2x_client.c at line 112
       --------------------------------------------------------------------------
       The application appears to have been direct launched using "srun",
       but OMPI was not built with SLURM's PMI support and therefore cannot
       execute. There are several options for building PMI support under
       SLURM, depending upon the SLURM version you are using:
       
         version 16.05 or later: you can use SLURM's PMIx support. This
         requires that you configure and build SLURM --with-pmix.
       
         Versions earlier than 16.05: you must use either SLURM's PMI-1 or
         PMI-2 support. SLURM builds PMI-1 by default, or you can manually
         install PMI-2. You must then build Open MPI using --with-pmi pointing
         to the SLURM PMI library location.
       
       Please configure as appropriate and try again.
       --------------------------------------------------------------------------
       *** An error occurred in MPI_Init
       *** on a NULL communicator
       *** MPI_ERRORS_ARE_FATAL (processes in this communicator will now abort,
       ***    and potentially your MPI job)
       [c4-n43:3303389] Local abort before MPI_INIT completed completed successfully, but am not able to aggregate error messages, and not able to guarantee that all other processes were killed!
     ```

*   checking dependencies in R code ... NOTE
     ```
     [c4-n43:3290102] OPAL ERROR: Not initialized in file ext2x_client.c at line 112
     --------------------------------------------------------------------------
     The application appears to have been direct launched using "srun",
     but OMPI was not built with SLURM's PMI support and therefore cannot
     execute. There are several options for building PMI support under
     SLURM, depending upon the SLURM version you are using:
     
       version 16.05 or later: you can use SLURM's PMIx support. This
       requires that you configure and build SLURM --with-pmix.
     
       Versions earlier than 16.05: you must use either SLURM's PMI-1 or
       PMI-2 support. SLURM builds PMI-1 by default, or you can manually
       install PMI-2. You must then build Open MPI using --with-pmi pointing
       to the SLURM PMI library location.
     
     Please configure as appropriate and try again.
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

# MSstatsBig (1.8.1)

* Email: <mailto:mtst@mstaniak.pl>

Run `revdepcheck::revdep_details(, "MSstatsBig")` for more info

## In both

*   checking R code for possible problems ... NOTE
     ```
     ...
     cleanSpectronautChunk: no visible binding for global variable
       ‘Identified’
     cleanSpectronautChunk: no visible binding for global variable
       ‘EGQvalue’
     cleanSpectronautChunk: no visible binding for global variable
       ‘PGQvalue’
     cleanSpectronautChunk: no visible binding for global variable
       ‘FFrgLossType’
     cleanSpectronautChunk: no visible binding for global variable
       ‘LabeledSequence’
     cleanSpectronautChunk: no visible global function definition for ‘:=’
     cleanSpectronautChunk: no visible binding for global variable
       ‘IsotopeLabelType’
     cleanSpectronautChunk: no visible binding for global variable
       ‘IsLabeled’
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

# MSstatsShiny (1.12.1)

* GitHub: <https://github.com/Vitek-Lab/MSstatsShiny>
* Email: <mailto:wu.anthon@northeastern.edu>

Run `revdepcheck::revdep_details(, "MSstatsShiny")` for more info

## In both

*   checking dependencies in R code ... WARNING
     ```
     '::' or ':::' import not declared from: ‘httr’
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
       ‘Peptides_Proteins_min’
     getSummary2: no visible binding for global variable
       ‘Peptides_Proteins_max’
     loadpageServer: no visible global function definition for
       ‘moduleServer’
     server: no visible global function definition for ‘callModule’
     statmodelServer: no visible global function definition for
       ‘moduleServer’
     update_matrix_from_edit: no visible global function definition for ‘as’
     visualizeNetworkServer: no visible global function definition for
       ‘reactiveVal’
     visualizeNetworkServer: no visible global function definition for
       ‘updateTextInput’
     Undefined global functions or variables:
       BioReplicate BioReplicate_Run Charge Condition Condition_Run FEATURES
       Features_Peptides_max Features_Peptides_min Fraction FragmentIon
       Intensity Max_Intensity Min_Intensity Mixture Number of Fractions
       PeptideSequence Peptides_Proteins_max Peptides_Proteins_min
       PrecursorCharge ProductCharge ProteinName Run TechRepMixture
       annotation.pd as callModule moduleServer nfea npep reactiveVal
       updateTextInput
     Consider adding
       importFrom("methods", "as")
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

# nixtlar (0.6.2)

* GitHub: <https://github.com/Nixtla/nixtlar>
* Email: <mailto:mariana@nixtla.io>
* GitHub mirror: <https://github.com/cran/nixtlar>

Run `revdepcheck::revdep_details(, "nixtlar")` for more info

## In both

*   checking DESCRIPTION meta-information ... NOTE
     ```
       Missing dependency on R >= 4.1.0 because package code uses the pipe
       |> or function shorthand \(...) syntax added in R 4.1.0.
       File(s) using such syntax:
         ‘get_model_params.R’ ‘level_from_quantiles.R’ ‘make_request.R’
         ‘nixtla_client_cross_validation.R’ ‘nixtla_client_detect_anomalies.R’
         ‘nixtla_client_forecast.R’ ‘nixtla_client_historic.R’
         ‘nixtla_client_plot.R’ ‘nixtla_validate_api_key.R’
         ‘validate_exogenous.R’
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

# PAMpal (1.4.4)

* Email: <mailto:taiki.sakai@noaa.gov>
* GitHub mirror: <https://github.com/cran/PAMpal>

Run `revdepcheck::revdep_details(, "PAMpal")` for more info

## In both

*   checking whether package ‘PAMpal’ can be installed ... WARNING
     ```
     Found the following significant warnings:
       Warning: no DISPLAY variable so Tk is not available
     See ‘/scratch/henrik/revdep/globals/checks/PAMpal/new/PAMpal.Rcheck/00install.out’ for details.
     ```

# PAMscapes (0.14.5)

* Email: <mailto:taiki.sakai@noaa.gov>
* GitHub mirror: <https://github.com/cran/PAMscapes>

Run `revdepcheck::revdep_details(, "PAMscapes")` for more info

## In both

*   checking whether package ‘PAMscapes’ can be installed ... WARNING
     ```
     Found the following significant warnings:
       Warning: no DISPLAY variable so Tk is not available
     See ‘/scratch/henrik/revdep/globals/checks/PAMscapes/new/PAMscapes.Rcheck/00install.out’ for details.
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

# pavo (2.9.0)

* GitHub: <https://github.com/rmaia/pavo>
* Email: <mailto:thomas.white026@gmail.com>
* GitHub mirror: <https://github.com/cran/pavo>

Run `revdepcheck::revdep_details(, "pavo")` for more info

## In both

*   checking whether package ‘pavo’ can be installed ... WARNING
     ```
     Found the following significant warnings:
       Warning: no DISPLAY variable so Tk is not available
     See ‘/scratch/henrik/revdep/globals/checks/pavo/new/pavo.Rcheck/00install.out’ for details.
     ```

# pgxRpi (1.6.0)

* GitHub: <https://github.com/progenetix/pgxRpi>
* Email: <mailto:hangjia.zhao@uzh.ch>

Run `revdepcheck::revdep_details(, "pgxRpi")` for more info

## In both

*   checking re-building of vignette outputs ... ERROR
     ```
     ...
     Backtrace:
         ▆
      1. └─pgxRpi::segtoFreq(segdata, cnv_column_idx = 6, cohort_name = "c1")
      2.   └─base::colSums(bin.dup.data1)
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     
     Error: processing vignette 'Introduction_3_access_cnv_frequency.Rmd' failed with diagnostics:
     'x' must be an array of at least two dimensions
     --- failed re-building ‘Introduction_3_access_cnv_frequency.Rmd’
     
     --- re-building ‘Introduction_4_process_pgxseg.Rmd’ using rmarkdown
     The magick package is required to crop "/scratch/henrik/revdep/globals/checks/pgxRpi/new/pgxRpi.Rcheck/vign_test/pgxRpi/vignettes/Introduction_4_process_pgxseg_files/figure-html/unnamed-chunk-6-1.png" but not available.
     The magick package is required to crop "/scratch/henrik/revdep/globals/checks/pgxRpi/new/pgxRpi.Rcheck/vign_test/pgxRpi/vignettes/Introduction_4_process_pgxseg_files/figure-html/unnamed-chunk-7-1.png" but not available.
     The magick package is required to crop "/scratch/henrik/revdep/globals/checks/pgxRpi/new/pgxRpi.Rcheck/vign_test/pgxRpi/vignettes/Introduction_4_process_pgxseg_files/figure-html/unnamed-chunk-8-1.png" but not available.
     The magick package is required to crop "/scratch/henrik/revdep/globals/checks/pgxRpi/new/pgxRpi.Rcheck/vign_test/pgxRpi/vignettes/Introduction_4_process_pgxseg_files/figure-html/unnamed-chunk-13-1.png" but not available.
     The magick package is required to crop "/scratch/henrik/revdep/globals/checks/pgxRpi/new/pgxRpi.Rcheck/vign_test/pgxRpi/vignettes/Introduction_4_process_pgxseg_files/figure-html/unnamed-chunk-14-1.png" but not available.
     The magick package is required to crop "/scratch/henrik/revdep/globals/checks/pgxRpi/new/pgxRpi.Rcheck/vign_test/pgxRpi/vignettes/Introduction_4_process_pgxseg_files/figure-html/unnamed-chunk-15-1.png" but not available.
     The magick package is required to crop "/scratch/henrik/revdep/globals/checks/pgxRpi/new/pgxRpi.Rcheck/vign_test/pgxRpi/vignettes/Introduction_4_process_pgxseg_files/figure-html/unnamed-chunk-16-1.png" but not available.
     --- finished re-building ‘Introduction_4_process_pgxseg.Rmd’
     
     SUMMARY: processing the following file failed:
       ‘Introduction_3_access_cnv_frequency.Rmd’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

*   checking R code for possible problems ... NOTE
     ```
     pgxSegprocess: no visible binding for global variable
       ‘followup_state_id’
     Undefined global functions or variables:
       followup_state_id
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

# Prostar (1.42.0)

* GitHub: <https://github.com/edyp-lab/Prostar>
* Email: <mailto:samuel.wieczorek@cea.fr>

Run `revdepcheck::revdep_details(, "Prostar")` for more info

## In both

*   checking whether package ‘Prostar’ can be installed ... WARNING
     ```
     Found the following significant warnings:
       Warning: replacing previous import ‘future::reset’ by ‘shinyjs::reset’ when loading ‘Prostar’
     See ‘/scratch/henrik/revdep/globals/checks/Prostar/new/Prostar.Rcheck/00install.out’ for details.
     ```

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
       ‘DT’ ‘R.utils’ ‘RColorBrewer’ ‘XML’ ‘colourpicker’ ‘gtools’
       ‘markdown’ ‘rclipboard’ ‘sass’ ‘shinyTree’ ‘shinyWidgets’
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

# pysparklyr (0.2.0)

* GitHub: <https://github.com/mlverse/pysparklyr>
* Email: <mailto:edgar@posit.co>
* GitHub mirror: <https://github.com/cran/pysparklyr>

Run `revdepcheck::revdep_details(, "pysparklyr")` for more info

## In both

*   checking dependencies in R code ... WARNING
     ```
     '::' or ':::' import not declared from: ‘jsonlite’
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

# QDNAseq (1.46.0)

* GitHub: <https://github.com/ccagc/QDNAseq>
* Email: <mailto:d.sie@vumc.nl>

Run `revdepcheck::revdep_details(, "QDNAseq")` for more info

## In both

*   checking re-building of vignette outputs ... WARNING
     ```
     ...
     Total time:0minutes
     
     Warning in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  :
       texi2dvi script/program not available, using emulation
     Error: processing vignette 'QDNAseq.Rnw' failed with diagnostics:
     unable to run pdflatex on 'QDNAseq.tex'
     LaTeX errors:
     ! LaTeX Error: File `nowidow.sty' not found.
     
     Type X to quit or <RETURN> to proceed,
     or enter new name. (Default extension: sty)
     
     ! Emergency stop.
     <read *> 
              
     l.197 \RequirePackage
                          {parnotes}^^M
     !  ==> Fatal error occurred, no output PDF file produced!
     --- failed re-building ‘QDNAseq.Rnw’
     
     SUMMARY: processing the following file failed:
       ‘QDNAseq.Rnw’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

# qrlabelr (0.2.0)

* GitHub: <https://github.com/awkena/qrlabelr>
* Email: <mailto:alex.kena24@gmail.com>
* GitHub mirror: <https://github.com/cran/qrlabelr>

Run `revdepcheck::revdep_details(, "qrlabelr")` for more info

## In both

*   checking whether package ‘qrlabelr’ can be installed ... WARNING
     ```
     Found the following significant warnings:
       Warning: replacing previous import ‘bslib::show_toast’ by ‘shinyWidgets::show_toast’ when loading ‘qrlabelr’
     See ‘/scratch/henrik/revdep/globals/checks/qrlabelr/new/qrlabelr.Rcheck/00install.out’ for details.
     ```

*   checking DESCRIPTION meta-information ... NOTE
     ```
       Missing dependency on R >= 4.2.0 because package code uses the pipe
       placeholder syntax added in R 4.2.0.
       File(s) using such syntax:
         ‘all_new_functions.R’
     ```

# receptiviti (0.2.1)

* GitHub: <https://github.com/Receptiviti/receptiviti-r>
* Email: <mailto:kenglish@receptiviti.com>
* GitHub mirror: <https://github.com/cran/receptiviti>

Run `revdepcheck::revdep_details(, "receptiviti")` for more info

## In both

*   checking tests ...
     ```
     ...
       
       ══ Skipped tests (4) ═══════════════════════════════════════════════════════════
       • no API key (4): 'test-receptiviti.R:78:1',
         'test-receptiviti_frameworks.R:1:1', 'test-receptiviti_norming.R:12:1',
         'test-receptiviti_status.R:13:1'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-receptiviti.R:9:3'): invalid inputs are caught ─────────────────
       Error: Invalid header received from client.
       
       Backtrace:
           ▆
        1. ├─testthat::expect_error(...) at test-receptiviti.R:9:3
        2. │ └─testthat:::expect_condition_matching_(...)
        3. │   └─testthat:::quasi_capture(...)
        4. │     ├─testthat (local) .capture(...)
        5. │     │ └─base::withCallingHandlers(...)
        6. │     └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
        7. └─receptiviti::receptiviti(...)
        8.   └─receptiviti:::manage_request(...)
       
       [ FAIL 1 | WARN 0 | SKIP 4 | PASS 5 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# regmedint (1.0.1)

* GitHub: <https://github.com/kaz-yos/regmedint>
* Email: <mailto:yi.li10@mail.mcgill.ca>
* GitHub mirror: <https://github.com/cran/regmedint>

Run `revdepcheck::revdep_details(, "regmedint")` for more info

## In both

*   checking tests ...
     ```
     ...
       ── Error ('test-05_calc_myreg.R:194:9'): calc_myreg / calls calc_myreg_mreg_logistic_yreg_linear when mreg logistic / yreg linear ──
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-05_calc_myreg.R:194:9
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       ── Error ('test-05_calc_myreg.R:235:9'): calc_myreg / calls calc_myreg_mreg_logistic_yreg_logistic when mreg logistic / yreg logistic ──
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: `with_mock()` was deprecated in testthat 3.2.0 and is now defunct.
       ℹ Please use `with_mocked_bindings()` instead.
       Backtrace:
           ▆
        1. └─testthat::with_mock(...) at test-05_calc_myreg.R:235:9
        2.   └─lifecycle::deprecate_stop("3.2.0", "with_mock()", "with_mocked_bindings()")
        3.     └─lifecycle:::deprecate_stop0(msg)
        4.       └─rlang::cnd_signal(...)
       
       [ FAIL 4 | WARN 0 | SKIP 2 | PASS 4128 ]
       Error:
       ! Test failures.
       Execution halted
     ```

*   checking dependencies in R code ... NOTE
     ```
     Namespace in Imports field not imported from: ‘Deriv’
       All declared Imports should be used.
     ```

# RFLOMICS (1.2.0)

* GitHub: <https://github.com/RFLOMICS/RFLOMICS>
* Email: <mailto:nadia.bessoltane@inrae.fr>

Run `revdepcheck::revdep_details(, "RFLOMICS")` for more info

## In both

*   checking tests ...
     ```
     ...
       
       > 
       > test_check("RFLOMICS")
       Saving _problems/test-6_annotation-429.R
       [ FAIL 1 | WARN 1 | SKIP 3 | PASS 568 ]
       
       ══ Skipped tests (3) ═══════════════════════════════════════════════════════════
       • Functional test for differential analysis skipped (1): 'test-4_DE.R:190:1'
       • Functionnal testing for Coseq skipped (1): 'test-5_coseq.R:220:1'
       • Tests for MOFA integration skipped. (1): 'test-7_MOFA.R:132:1'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Failure ('test-6_annotation.R:426:5'): plotClusterPRofiler - GO only ────────
       Expected `plotClusterProfiler(...)` not to throw any errors.
       Actually got a <simpleError> with message:
         unused argument (color.params = list(c(0.300399996066667, 0.301045294633334, 0.264438544366666, -0.200414615933333, -0.3007194991, 0.178315409633333, 0.673515665866667, -0.376568520733334, 0.157759883033333, -0.236249579033334, -0.276641702366667, -0.291926095733333, 0.212942502866667, 0.496659495299999, 0.307222577833334, -0.302097530833333, 0.353649462433333, -0.5909892019, -0.388045443066667, 0.229295718699999, -0.1442581488, -0.777006877033334, -0.2074591879, -0.691895002733333, 0.3407854646, -0.217149637, 
         0.307201186666666, -0.418465698966667, -0.501175408399999, 0.255176241433334, 0.446902293133333, 0.338214238033332, -0.217080244766667, 0.250611779533334, 0.1845572569, -0.2192945913, -0.405890665066667, 0.156979454333334, 0.505127047300001, -0.3221885657, 0.504598985933333, 0.195820359666666, 0.536327117633334, 0.273841055066666, 0.271927078866666, 0.183922002533333, -0.207328281966667, 0.194461900400001, -0.230959126366666, 0.912593104366668, -0.3266976465, -0.429720156866667, -0.593520664766667, 
         0.330953947566667, 0.486931707266667, 0.253410547133334, 0.2467424736, 0.157871606566667, 0.204814479066667, -0.3339815318, -0.2533776575, -0.314177966, 0.410912358533334, -0.165349674366667, -0.307108972433334, 0.234900304166667, -0.199921871433333, 0.192957373733334, -0.194109403, -0.3770501065, 0.236607130199999, -0.1988150821, 0.253424834433333, -0.177365903833333, -0.3591419015, 0.474637460166667, 0.156515031566667, -0.144220623466667, 0.185177678933333, 0.179446874866667, 0.331531272733333, 
         -0.4504685208, -0.166342142966666, -0.313439013766667, 0.309729636033333, -0.216059582266667, -0.200324587333333, 0.262163061933333, -0.1792709633, 0.249115962766667, -0.260620727133333, -0.318724055900001, 0.3480786074, -0.403214862066667, 0.463990265933334, -0.222806446433333, -0.218519887733333, -0.2981448912, 0.463557329333333, -0.719532571233334, -0.257235152466667, -0.2101228905, 0.388242255300001, 0.191443329833333, 0.3549675335, 0.401430903033334, 0.239838099366666, -0.1824585654, 0.251306488066667, 
         0.2281106187, 0.229249873166667, -0.207186356966667, 0.1867881103, 0.409495102033334, 0.210617230133334, -0.177041792366667, 0.3352274293, -0.245853278266667, -0.841154646433333, -0.281936161766667, 0.2831585312, -0.610432403600001, -0.218978262266667, -0.3496594605, -0.268436096566667, 0.212388397633334, -0.197467209066666, -0.247592469066667, 0.506184985800001, 0.413667750933333, -0.1516626657)))
       
       [ FAIL 1 | WARN 1 | SKIP 3 | PASS 568 ]
       Error:
       ! Test failures.
       Execution halted
     ```

*   checking dependencies in R code ... NOTE
     ```
     Namespaces in Imports field not imported from:
       ‘org.At.tair.db’ ‘reticulate’
       All declared Imports should be used.
     ```

*   checking R code for possible problems ... NOTE
     ```
     ...
     runCoExpression,RflomicsSE: no visible global function definition for
       ‘assay’
     runNormalization,RflomicsSE: no visible global function definition for
       ‘assay’
     runOmicsPCA,RflomicsSE: no visible global function definition for
       ‘assay’
     Undefined global functions or variables:
       % of explained variance -log10pvalue . Adj.pvalue All C Cluster
       Component Contrast Count Cumulative Explained Variance DEF DataFrame
       Dataset Description Entity ExperimentList FC GeneRatio SE.name SUMCOL
       Up_Down across add_tally arrange assay assay<- cluster colData
       colData<- complete.cases contrast contrastName contrastName3 cor
       criteria data dataset datasetFill desc distinct does.belong
       ecoseed.df errors experiments factorType filter fixFactor2 full_join
       group groupComparison group_by groups if_else intersectColumns
       left_join log2FC logFC logLike mean.y_profiles mutate mutate_at n
       observations omicName outsideGroup p.adjust packageVersion percent
       presence primary prop pvalue relevel relocate right_join sampleMap
       samples sd select_if sessionInfo status summarise summarize tabel
       type ungroup value variable y.axis y_profiles
     Consider adding
       importFrom("stats", "C", "complete.cases", "cor", "filter", "p.adjust",
                  "relevel", "sd")
       importFrom("utils", "data", "packageVersion", "sessionInfo")
     to your NAMESPACE file.
     ```

# rsi (0.3.2)

* GitHub: <https://github.com/Permian-Global-Research/rsi>
* Email: <mailto:mike.mahoney.218@gmail.com>
* GitHub mirror: <https://github.com/cran/rsi>

Run `revdepcheck::revdep_details(, "rsi")` for more info

## In both

*   checking DESCRIPTION meta-information ... NOTE
     ```
       Missing dependency on R >= 4.1.0 because package code uses the pipe
       |> or function shorthand \(...) syntax added in R 4.1.0.
       File(s) using such syntax:
         ‘calculate_indices.Rd’ ‘get_stac_data.R’ ‘get_stac_data.Rd’
         ‘landsat_mask_function.Rd’
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

# safetyCharts (0.3.0)

* GitHub: <https://github.com/SafetyGraphics/safetyCharts>
* Email: <mailto:jwildfire@gmail.com>
* GitHub mirror: <https://github.com/cran/safetyCharts>

Run `revdepcheck::revdep_details(, "safetyCharts")` for more info

## In both

*   checking Rd files ... NOTE
     ```
     ...
     checkRd: (-1) safety_outlier_explorer.Rd:24: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) safety_outlier_explorer.Rd:25: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) safety_outlier_explorer.Rd:26: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) safety_outlier_explorer.Rd:27: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) safety_outlier_explorer.Rd:28: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) safety_results_over_time.Rd:24: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) safety_results_over_time.Rd:25: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) safety_results_over_time.Rd:26: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) safety_results_over_time.Rd:27: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) safety_results_over_time.Rd:28: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) safety_results_over_time.Rd:29: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) safety_results_over_time.Rd:30: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) safety_results_over_time.Rd:31: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) safety_results_over_time.Rd:32: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) safety_results_over_time.Rd:33: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) tendril_chart.Rd:18: Lost braces
         18 | Create a plot using the {{Tendril}} package
            |                         ^
     checkRd: (-1) tendril_chart.Rd:24: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) tendril_chart.Rd:25: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) tendril_chart.Rd:26: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) tendril_chart.Rd:27: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) tendril_chart.Rd:28: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) tendril_chart.Rd:29: Lost braces in \itemize; meant \describe ?
     checkRd: (-1) tendril_chart.Rd:30: Lost braces in \itemize; meant \describe ?
     ```

# safetyGraphics (2.1.1)

* GitHub: <https://github.com/SafetyGraphics/safetyGraphics>
* Email: <mailto:jwildfire@gmail.com>
* GitHub mirror: <https://github.com/cran/safetyGraphics>

Run `revdepcheck::revdep_details(, "safetyGraphics")` for more info

## In both

*   checking Rd files ... NOTE
     ```
     ...
     checkRd: (-1) app_startup.Rd:38: Lost braces in \itemize; \value handles \item{}{} directly
     checkRd: (-1) app_startup.Rd:39: Lost braces in \itemize; \value handles \item{}{} directly
     checkRd: (-1) makeChartConfig.Rd:17: Lost braces; missing escapes or markup?
         17 | \item{packages}{installed packages names containing yaml config files in the /inst/{packageLocation} folder}
            |                                                                                    ^
     checkRd: (-1) makeChartConfig.Rd:26: Lost braces in \itemize; \value handles \item{}{} directly
     checkRd: (-1) makeChartConfig.Rd:27: Lost braces in \itemize; \value handles \item{}{} directly
     checkRd: (-1) makeChartConfig.Rd:28: Lost braces in \itemize; \value handles \item{}{} directly
     checkRd: (-1) makeChartConfig.Rd:29: Lost braces in \itemize; \value handles \item{}{} directly
     checkRd: (-1) makeChartConfig.Rd:30: Lost braces in \itemize; \value handles \item{}{} directly
     checkRd: (-1) makeChartConfig.Rd:31: Lost braces in \itemize; \value handles \item{}{} directly
     checkRd: (-1) makeChartConfig.Rd:32: Lost braces in \itemize; \value handles \item{}{} directly
     checkRd: (-1) makeChartConfig.Rd:33: Lost braces in \itemize; \value handles \item{}{} directly
     checkRd: (-1) makeChartConfig.Rd:34: Lost braces in \itemize; \value handles \item{}{} directly
     checkRd: (-1) makeChartConfig.Rd:35: Lost braces in \itemize; \value handles \item{}{} directly
     checkRd: (-1) makeChartConfig.Rd:36: Lost braces in \itemize; \value handles \item{}{} directly
     checkRd: (-1) makeChartConfig.Rd:37: Lost braces in \itemize; \value handles \item{}{} directly
     checkRd: (-1) makeMapping.Rd:21: Lost braces in \itemize; \value handles \item{}{} directly
     checkRd: (-1) makeMapping.Rd:22: Lost braces in \itemize; \value handles \item{}{} directly
     checkRd: (-1) makeMeta.Rd:30: Lost braces; missing escapes or markup?
         30 | \item Domain-level metadata saved as meta_{chart$name} in the chart$package namespace
            |                                           ^
     checkRd: (-1) makeMeta.Rd:31: Lost braces; missing escapes or markup?
         31 | \item Chart-specific metadata saved as meta_{chart$domain} in the chart$package namespace
            |                                             ^
     ```

# scanMiRApp (1.16.0)

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
     .fakeAnno: no visible binding for global variable 'SampleKdModel'
     plotSitesOnUTR: no visible binding for global variable 'logKd'
     plotSitesOnUTR: no visible binding for global variable 'note'
     plotSitesOnUTR: no visible binding for global variable 'type'
     Undefined global functions or variables:
       SampleKdModel SampleTranscript logKd note type
     ```

# SCArray.sat (1.9.0)

* GitHub: <https://github.com/AbbVie-ComputationalGenomics/SCArray>
* Email: <mailto:xiuwen.zheng@abbvie.com>

Run `revdepcheck::revdep_details(, "SCArray.sat")` for more info

## In both

*   checking examples ... ERROR
     ```
     ...
     > 
     > d <- scNewSeuratGDS(fn)
     Input: /scratch/henrik/revdep/globals/library/SCArray.sat/SCArray/extdata/example.gds
         counts: 1000 x 850
     Warning: The following arguments are not used: layer
     Warning: The following arguments are not used: layer
     > 
     > d <- NormalizeData(d)
     Warning: The following arguments are not used: layer
     Performing log-normalization
     > d <- FindVariableFeatures(d, nfeatures=250)
     Warning: The following arguments are not used: layer
     Calculating gene variances
     Calculating feature variances of standardized and clipped values
     
       |                                                                      
       |                                                                |   0%
       |                                                                      
       |================================================================| 100%
     > d <- ScaleData(d)
     Warning: The following arguments are not used: layer
     Centering and scaling data matrix (SC_GDSMatrix [250x850])
     Warning: The new data doesn't have the same number of features as the current data
     Error: Attempting to add a different number of cells or features
     Execution halted
     ```

*   checking re-building of vignette outputs ... ERROR
     ```
     ...
     Quitting from SCArray.sat.Rmd:78-101 [unnamed-chunk-2]
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     <error/rlang_error>
     Error:
     ! Attempting to add a different number of cells or features
     ---
     Backtrace:
         ▆
      1. ├─Seurat::ScaleData(d)
      2. └─Seurat:::ScaleData.Seurat(d)
      3.   ├─Seurat::ScaleData(...)
      4.   └─Seurat:::ScaleData.Assay(...)
      5.     ├─SeuratObject::SetAssayData(...)
      6.     └─SCArray.sat:::SetAssayData.SCArrayAssay(...)
     ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
     
     Error: processing vignette 'SCArray.sat.Rmd' failed with diagnostics:
     Attempting to add a different number of cells or features
     --- failed re-building ‘SCArray.sat.Rmd’
     
     SUMMARY: processing the following file failed:
       ‘SCArray.sat.Rmd’
     
     Error: Vignette re-building failed.
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

# scLANE (1.0.0)

* GitHub: <https://github.com/jr-leary7/scLANE>
* Email: <mailto:j.leary@ufl.edu>

Run `revdepcheck::revdep_details(, "scLANE")` for more info

## In both

*   checking tests ...
     ```
     ...
       scLANE testing in GEE mode completed for 20 genes across 1 lineage in 57.948 secs
       scLANE testing in GLMM mode completed for 20 genes across 1 lineage in 2.438 mins
       [ FAIL 1 | WARN 741 | SKIP 0 | PASS 0 ]
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test_scLANE.R:328:5'): (code run outside of `test_that()`) ──────────
       <lifecycle_error_deprecated/defunctError/rlang_error/error/condition>
       Error: The `slot` argument of `GetAssayData()` was deprecated in SeuratObject 5.0.0 and is now defunct.
       i Please use the `layer` argument instead.
       Backtrace:
           ▆
        1. ├─withr::with_output_sink(...) at test_scLANE.R:42:1
        2. │ └─base::force(code)
        3. └─scLANE::geneProgramScoring(...) at test_scLANE.R:328:5
        4.   ├─Seurat::GetAssayData(expr.mat, slot = "counts", assay = Seurat::DefaultAssay(expr.mat))
        5.   └─SeuratObject:::GetAssayData.Seurat(...)
        6.     └─SeuratObject::.Deprecate(...)
        7.       └─lifecycle::deprecate_stop(...)
        8.         └─lifecycle:::deprecate_stop0(msg)
        9.           └─rlang::cnd_signal(...)
       
       [ FAIL 1 | WARN 741 | SKIP 0 | PASS 0 ]
       Error:
       ! Test failures.
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

# shiny.reglog (0.5.2)

* Email: <mailto:kosinski.mich@gmail.com>
* GitHub mirror: <https://github.com/cran/shiny.reglog>

Run `revdepcheck::revdep_details(, "shiny.reglog")` for more info

## In both

*   checking dependencies in R code ... WARNING
     ```
     Missing or unexported object: ‘gmailr::send_message’
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

# shinyOAuth (0.3.0)

* GitHub: <https://github.com/lukakoning/shinyOAuth>
* Email: <mailto:koningluka@gmail.com>
* GitHub mirror: <https://github.com/cran/shinyOAuth>

Run `revdepcheck::revdep_details(, "shinyOAuth")` for more info

## In both

*   checking tests ...
     ```
     ...
         8.       │ │   └─base (local) tryCatchOne(expr, names, parentenv, handlers[[1L]])
         9.       │ │     └─base (local) doTryCatch(return(expr), name, parentenv, handler)
        10.       │ └─base::force(expr)
        11.       └─rlang::abort(...)
       ── Error ('test-client-bearer-req.R:186:3'): client_bearer_req follows redirects when follow_redirect = TRUE ──
       <httr2_http_503/httr2_http/httr2_error/rlang_error/rlang_error/error/condition>
       Error in `httr2::req_perform(req)`: HTTP 503 Service Unavailable.
       Backtrace:
            ▆
         1. └─httr2::req_perform(req) at test-client-bearer-req.R:186:3
         2.   └─httr2:::handle_resp(req, resp, error_call = error_call)
         3.     └─httr2:::resp_failure_cnd(req, resp, error_call = error_call)
         4.       ├─rlang::catch_cnd(...)
         5.       │ ├─rlang::eval_bare(...)
         6.       │ ├─base::tryCatch(...)
         7.       │ │ └─base (local) tryCatchList(expr, classes, parentenv, handlers)
         8.       │ │   └─base (local) tryCatchOne(expr, names, parentenv, handlers[[1L]])
         9.       │ │     └─base (local) doTryCatch(return(expr), name, parentenv, handler)
        10.       │ └─base::force(expr)
        11.       └─rlang::abort(...)
       
       [ FAIL 13 | WARN 0 | SKIP 47 | PASS 1180 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# sigminer (2.3.1)

* GitHub: <https://github.com/ShixiangWang/sigminer>
* Email: <mailto:w_shixiang@163.com>
* GitHub mirror: <https://github.com/cran/sigminer>

Run `revdepcheck::revdep_details(, "sigminer")` for more info

## In both

*   checking DESCRIPTION meta-information ... NOTE
     ```
       Missing dependency on R >= 4.1.0 because package code uses the pipe
       |> or function shorthand \(...) syntax added in R 4.1.0.
       File(s) using such syntax:
         ‘show_group_enrichment.R’
     ```

# signeR (2.12.0)

* GitHub: <https://github.com/TojalLab/signeR>
* Email: <mailto:renan.valieris@accamargo.org.br>

Run `revdepcheck::revdep_details(, "signeR")` for more info

## In both

*   checking C++ specification ... NOTE
     ```
       Specified C++14: please drop specification unless essential
     ```

*   checking R code for possible problems ... NOTE
     ```
     ...
       ‘Samples’
     ExposureClassify,ANY-character: no visible binding for global variable
       ‘Col’
     ExposureClassify,ANY-character: no visible binding for global variable
       ‘Frequency’
     ExposureClassify,ANY-character: no visible binding for global variable
       ‘Row’
     ExposureClassifyCV,ANY-character: no visible binding for global
       variable ‘Col’
     ExposureClassifyCV,ANY-character: no visible binding for global
       variable ‘Frequency’
     ExposureClassifyCV,ANY-character: no visible binding for global
       variable ‘Row’
     ExposureCorrelation,SignExp-numeric: no visible binding for global
       variable ‘Feature’
     ExposureCorrelation,SignExp-numeric: no visible binding for global
       variable ‘exposure’
     ExposureCorrelation,matrix-numeric: no visible binding for global
       variable ‘Feature’
     ExposureCorrelation,matrix-numeric: no visible binding for global
       variable ‘exposure’
     Undefined global functions or variables:
       . Col Feature Frequency Reference_Allele Row Samples Signatures
       Tumor_Seq_Allele1 Tumor_Seq_Allele2 Variant_Type conf.high conf.low
       estimate exposure fc p.value project sig sig_test term
     ```

*   checking Rd files ... NOTE
     ```
     prepare_Rd: cosmic_data.Rd:91-93: Dropping empty section \details
     prepare_Rd: cosmic_data.Rd:98-100: Dropping empty section \references
     prepare_Rd: cosmic_data.Rd:101-102: Dropping empty section \examples
     prepare_Rd: tcga_similarities.Rd:96-98: Dropping empty section \details
     prepare_Rd: tcga_similarities.Rd:99-101: Dropping empty section \source
     prepare_Rd: tcga_similarities.Rd:102-104: Dropping empty section \references
     prepare_Rd: tcga_similarities.Rd:105-106: Dropping empty section \examples
     prepare_Rd: tcga_tumors.Rd:18-20: Dropping empty section \details
     prepare_Rd: tcga_tumors.Rd:21-23: Dropping empty section \source
     prepare_Rd: tcga_tumors.Rd:24-26: Dropping empty section \references
     prepare_Rd: tcga_tumors.Rd:27-28: Dropping empty section \examples
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

# SpaDES.core (3.0.4)

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
     New module test created at /scratch/henrik/1020049/RtmplTnFJS/reproducible/U3C0xYmG
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
     See ‘/scratch/henrik/revdep/globals/checks/sparrpowR/new/sparrpowR.Rcheck/00install.out’ for details.
     ```

# spdesign (0.0.5)

* GitHub: <https://github.com/edsandorf/spdesign>
* Email: <mailto:erlend.dancke.sandorf@nmbu.no>
* GitHub mirror: <https://github.com/cran/spdesign>

Run `revdepcheck::revdep_details(, "spdesign")` for more info

## In both

*   checking DESCRIPTION meta-information ... NOTE
     ```
       Missing dependency on R >= 4.1.0 because package code uses the pipe
       |> or function shorthand \(...) syntax added in R 4.1.0.
       File(s) using such syntax:
         ‘federov.R’
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

# sRACIPE (2.2.0)

* GitHub: <https://github.com/lusystemsbio/sRACIPE>
* Email: <mailto:m.lu@northeastern.edu>

Run `revdepcheck::revdep_details(, "sRACIPE")` for more info

## In both

*   checking C++ specification ... NOTE
     ```
       Specified C++11: please drop specification unless essential
     ```

*   checking DESCRIPTION meta-information ... NOTE
     ```
     License stub is invalid DCF.
     ```

*   checking R code for possible problems ... NOTE
     ```
     sracipeSimulate: no visible binding for global variable
       ‘configurationTmp’
     sracipeSimulate: no visible binding for global variable ‘outFileGETmp’
     sracipeSimulate: no visible binding for global variable
       ‘outFileParamsTmp’
     sracipeSimulate: no visible binding for global variable ‘outFileICTmp’
     sracipeSimulate: no visible binding for global variable
       ‘outFileConvergeTmp’
     sracipeConvergeDist,RacipeSE: no visible global function definition for
       ‘polygon’
     Undefined global functions or variables:
       configurationTmp outFileConvergeTmp outFileGETmp outFileICTmp
       outFileParamsTmp polygon
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
     See ‘/scratch/henrik/revdep/globals/checks/stppSim/new/stppSim.Rcheck/00install.out’ for details.
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

# synergyfinder (3.18.0)

* Email: <mailto:shuyu.zheng@helsinki.fi>

Run `revdepcheck::revdep_details(, "synergyfinder")` for more info

## In both

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
       ‘response_origin_mean’
     ReshapeData: no visible binding for global variable
       ‘response_origin_CI95’
     ZIP : <anonymous>: no visible global function definition for ‘predict’
     ZIP : <anonymous>: no visible binding for global variable ‘data’
     ZIP : <anonymous>: no visible binding for global variable ‘pred’
     ZIP : <anonymous>: no visible global function definition for ‘:=’
     ZIP: no visible binding for global variable ‘.’
     ZIP: no visible binding for global variable ‘ZIP_fit’
     ZIP: no visible binding for global variable ‘ZIP_ref’
     ZIP: no visible binding for global variable ‘ZIP_synergy’
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

# targets (1.11.4)

* GitHub: <https://github.com/ropensci/targets>
* Email: <mailto:will.landau.oss@gmail.com>
* GitHub mirror: <https://github.com/cran/targets>

Run `revdepcheck::revdep_details(, "targets")` for more info

## In both

*   checking Rd cross-references ... NOTE
     ```
     Unknown package ‘qs’ in Rd xrefs
     ```

# tfrmtbuilder (0.1.0)

* GitHub: <https://github.com/GSK-Biostatistics/tfrmtbuilder>
* Email: <mailto:becca.z.krouse@gsk.com>
* GitHub mirror: <https://github.com/cran/tfrmtbuilder>

Run `revdepcheck::revdep_details(, "tfrmtbuilder")` for more info

## In both

*   checking whether package ‘tfrmtbuilder’ can be installed ... WARNING
     ```
     Found the following significant warnings:
       Warning: replacing previous import ‘bslib::show_toast’ by ‘shinyWidgets::show_toast’ when loading ‘tfrmtbuilder’
     See ‘/scratch/henrik/revdep/globals/checks/tfrmtbuilder/new/tfrmtbuilder.Rcheck/00install.out’ for details.
     ```

# tidyfinance (0.4.5)

* GitHub: <https://github.com/tidy-finance/r-tidyfinance>
* Email: <mailto:christoph@tidy-intelligence.com>
* GitHub mirror: <https://github.com/cran/tidyfinance>

Run `revdepcheck::revdep_details(, "tidyfinance")` for more info

## In both

*   checking tests ...
     ```
     ...
         'test-create_wrds_dummy_database.R:12:3',
         'test-download_data_constituents.R:2:3', 'test-download_data_factors.R:2:3',
         'test-download_data_fred.R:2:3', 'test-download_data_fred.R:14:3',
         'test-download_data_macro_predictors.R:2:3', 'test-download_data_osap.R:2:3'
       
       ══ Failed tests ════════════════════════════════════════════════════════════════
       ── Error ('test-download_data_constituents.R:28:7'): download_data_constituents handles unavailable resource gracefully ──
       Error in `download_data_constituents(index = "SAMPLE_INDEX")`: Failed to download data for index `index`. Please check the index name or try again later.
       Backtrace:
            ▆
         1. ├─testthat::with_mocked_bindings(...) at test-download_data_constituents.R:25:3
         2. ├─testthat::expect_message(...) at test-download_data_constituents.R:28:7
         3. │ └─testthat:::expect_condition_matching_(...)
         4. │   └─testthat:::quasi_capture(...)
         5. │     ├─testthat (local) .capture(...)
         6. │     │ └─base::withCallingHandlers(...)
         7. │     └─rlang::eval_bare(quo_get_expr(.quo), quo_get_env(.quo))
         8. └─tidyfinance::download_data_constituents(index = "SAMPLE_INDEX")
         9.   └─cli::cli_abort("Failed to download data for index {.arg index}. Please check the index name or try again later.")
        10.     └─rlang::abort(...)
       
       [ FAIL 1 | WARN 0 | SKIP 8 | PASS 88 ]
       Error:
       ! Test failures.
       Execution halted
     ```

# tramvs (0.0-8)

* Email: <mailto:lucasheinrich.kook@gmail.com>
* GitHub mirror: <https://github.com/cran/tramvs>

Run `revdepcheck::revdep_details(, "tramvs")` for more info

## In both

*   checking re-building of vignette outputs ... WARNING
     ```
     ...
       ...
     --- re-building ‘tramvs.Rnw’ using knitr
     Warning in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  :
       texi2dvi script/program not available, using emulation
     Error: processing vignette 'tramvs.Rnw' failed with diagnostics:
     unable to run pdflatex on 'tramvs.tex'
     LaTeX errors:
     ! LaTeX Error: File `wrapfig.sty' not found.
     
     Type X to quit or <RETURN> to proceed,
     or enter new name. (Default extension: sty)
     
     ! Emergency stop.
     <read *> 
              
     l.68 \usepackage
                     {float}^^M
     !  ==> Fatal error occurred, no output PDF file produced!
     --- failed re-building ‘tramvs.Rnw’
     
     SUMMARY: processing the following file failed:
       ‘tramvs.Rnw’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

# TrialEmulation (0.0.4.9)

* GitHub: <https://github.com/Causal-LDA/TrialEmulation>
* Email: <mailto:isaac.gravestock@roche.com>
* GitHub mirror: <https://github.com/cran/TrialEmulation>

Run `revdepcheck::revdep_details(, "TrialEmulation")` for more info

## In both

*   checking Rd cross-references ... NOTE
     ```
     Unknown package ‘parglm’ in Rd xrefs
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
     See ‘/scratch/henrik/revdep/globals/checks/TriDimRegression/new/TriDimRegression.Rcheck/00install.out’ for details.
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
* removing ‘/scratch/henrik/revdep/globals/checks/TriDimRegression/new/TriDimRegression.Rcheck/TriDimRegression’


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
* removing ‘/scratch/henrik/revdep/globals/checks/TriDimRegression/old/TriDimRegression.Rcheck/TriDimRegression’


```
# tsdistributions (1.0.3)

* GitHub: <https://github.com/tsmodels/tsdistributions>
* Email: <mailto:alexios@4dscape.com>
* GitHub mirror: <https://github.com/cran/tsdistributions>

Run `revdepcheck::revdep_details(, "tsdistributions")` for more info

## In both

*   checking re-building of vignette outputs ... ERROR
     ```
     ...
     --- finished re-building ‘estimation_demo.Rmd’
     
     --- re-building ‘location_scale_distributions.Rmd’ using rmarkdown
     [WARNING] Deprecated: --highlight-style. Use --syntax-highlighting instead.
     ! Undefined control sequence.
     l.56 \NewDocumentCommand
                             \citeproctext{}{} 
     
     Error: processing vignette 'location_scale_distributions.Rmd' failed with diagnostics:
     LaTeX failed to compile /scratch/henrik/revdep/globals/checks/tsdistributions/new/tsdistributions.Rcheck/vign_test/tsdistributions/vignettes/location_scale_distributions.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See location_scale_distributions.log for more info.
     --- failed re-building ‘location_scale_distributions.Rmd’
     
     --- re-building ‘profile_demo.Rmd’ using rmarkdown
     [WARNING] Deprecated: --highlight-style. Use --syntax-highlighting instead.
     --- finished re-building ‘profile_demo.Rmd’
     
     --- re-building ‘spd_demo.Rmd’ using rmarkdown
     [WARNING] Deprecated: --highlight-style. Use --syntax-highlighting instead.
     --- finished re-building ‘spd_demo.Rmd’
     
     SUMMARY: processing the following file failed:
       ‘location_scale_distributions.Rmd’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

# tsgarch (1.0.3)

* GitHub: <https://github.com/tsmodels/tsgarch>
* Email: <mailto:alexios@4dscape.com>
* GitHub mirror: <https://github.com/cran/tsgarch>

Run `revdepcheck::revdep_details(, "tsgarch")` for more info

## In both

*   checking DESCRIPTION meta-information ... NOTE
     ```
       Missing dependency on R >= 4.1.0 because package code uses the pipe
       |> or function shorthand \(...) syntax added in R 4.1.0.
       File(s) using such syntax:
         ‘benchmark.R’ ‘print.R’
     ```

# tsmarch (1.0.0)

* GitHub: <https://github.com/tsmodels/tsmarch>
* Email: <mailto:alexios@4dscape.com>
* GitHub mirror: <https://github.com/cran/tsmarch>

Run `revdepcheck::revdep_details(, "tsmarch")` for more info

## In both

*   checking re-building of vignette outputs ... ERROR
     ```
     Error(s) in re-building vignettes:
       ...
     --- re-building ‘feasible_multivariate_garch.Rmd’ using rmarkdown
     [WARNING] Deprecated: --highlight-style. Use --syntax-highlighting instead.
     ! Undefined control sequence.
     l.97 \NewDocumentCommand
                             \citeproctext{}{} 
     
     Error: processing vignette 'feasible_multivariate_garch.Rmd' failed with diagnostics:
     LaTeX failed to compile /scratch/henrik/revdep/globals/checks/tsmarch/new/tsmarch.Rcheck/vign_test/tsmarch/vignettes/feasible_multivariate_garch.tex. See https://yihui.org/tinytex/r/#debugging for debugging tips. See feasible_multivariate_garch.log for more info.
     --- failed re-building ‘feasible_multivariate_garch.Rmd’
     
     --- re-building ‘tsmarch_demo.Rmd’ using rmarkdown
     [WARNING] Deprecated: --highlight-style. Use --syntax-highlighting instead.
     --- finished re-building ‘tsmarch_demo.Rmd’
     
     SUMMARY: processing the following file failed:
       ‘feasible_multivariate_garch.Rmd’
     
     Error: Vignette re-building failed.
     Execution halted
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

# viewpoly (0.4.1)

* GitHub: <https://github.com/mmollina/viewpoly>
* Email: <mailto:chtaniguti@tamu.edu>
* GitHub mirror: <https://github.com/cran/viewpoly>

Run `revdepcheck::revdep_details(, "viewpoly")` for more info

## In both

*   checking DESCRIPTION meta-information ... NOTE
     ```
       Missing dependency on R >= 4.1.0 because package code uses the pipe
       |> or function shorthand \(...) syntax added in R 4.1.0.
       File(s) using such syntax:
         ‘functions_upload.R’ ‘mod_hidecan.R’
     ```

# VIM (7.0.0)

* GitHub: <https://github.com/statistikat/VIM>
* Email: <mailto:matthias.templ@gmail.com>
* GitHub mirror: <https://github.com/cran/VIM>

Run `revdepcheck::revdep_details(, "VIM")` for more info

## In both

*   R CMD check timed out


# vmeasur (0.1.4)

* Email: <mailto:jhuc964@aucklanduni.ac.nz>
* GitHub mirror: <https://github.com/cran/vmeasur>

Run `revdepcheck::revdep_details(, "vmeasur")` for more info

## In both

*   checking whether package ‘vmeasur’ can be installed ... WARNING
     ```
     Found the following significant warnings:
       Warning: no DISPLAY variable so Tk is not available
     See ‘/scratch/henrik/revdep/globals/checks/vmeasur/new/vmeasur.Rcheck/00install.out’ for details.
     ```

# WeightedCluster (2.0)

* Email: <mailto:matthias.studer@unige.ch>
* GitHub mirror: <https://github.com/cran/WeightedCluster>

Run `revdepcheck::revdep_details(, "WeightedCluster")` for more info

## In both

*   checking re-building of vignette outputs ... WARNING
     ```
     ...
     
     --- re-building ‘WeightedClusterPreview.Rnw’ using knitr
     Warning in texi2dvi(file = file, pdf = TRUE, clean = clean, quiet = quiet,  :
       texi2dvi script/program not available, using emulation
     Error: processing vignette 'WeightedClusterPreview.Rnw' failed with diagnostics:
     unable to run pdflatex on 'WeightedClusterPreview.tex'
     LaTeX errors:
     ! LaTeX Error: File `textpos.sty' not found.
     
     Type X to quit or <RETURN> to proceed,
     or enter new name. (Default extension: sty)
     
     ! Emergency stop.
     <read *> 
              
     l.85 \usepackage
                     {tikz}^^M
     !  ==> Fatal error occurred, no output PDF file produced!
     --- failed re-building ‘WeightedClusterPreview.Rnw’
     
     SUMMARY: processing the following files failed:
       ‘WeightedClusterFR.Rnw’ ‘WeightedClusterPreview.Rnw’
     
     Error: Vignette re-building failed.
     Execution halted
     ```

# wru (3.0.3)

* GitHub: <https://github.com/kosukeimai/wru>
* Email: <mailto:brandon@bertelsen.ca>
* GitHub mirror: <https://github.com/cran/wru>

Run `revdepcheck::revdep_details(, "wru")` for more info

## In both

*   checking dependencies in R code ... NOTE
     ```
     Namespaces in Imports field not imported from:
       ‘future’ ‘tidyr’
       All declared Imports should be used.
     ```

# xpect (1.0)

* Email: <mailto:giancarlo.vercellino@gmail.com>
* GitHub mirror: <https://github.com/cran/xpect>

Run `revdepcheck::revdep_details(, "xpect")` for more info

## In both

*   R CMD check timed out


