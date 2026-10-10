#! /usr/bin/env bash


## ---------------------------------------------------------------------
## Phase 1
## ---------------------------------------------------------------------

## Add packages to check
revdep/run.R --add-children
revdep/run.R --add-grandchildren

## Drop packages failing on CRAN (2026-03-11)
## None of these depend on 'globals' directly - all are grandchildren,
## reached via one of its children (future, future.apply, furrr, ...)
pkgs_failing_cran=(
  arkdb              # via future.apply
  delimtools         # via future, furrr
  dispositionEffect  # via future, furrr
  BayesPET           # via future, furrr
  EpiForsk           # via future, furrr
  httpgd             # via future
)
revdep/run.R --rm "${pkgs_failing_cran[@]}"

## Drop packages failing on Bioconductor (2026-01-31)
## Grandchildren only, same as above
pkgs_failing_bioc=(
  dar     # via future, furrr
  pgxRpi  # via future, future.apply
)
revdep/run.R --rm "${pkgs_failing_bioc[@]}"

## Drop packages no longer on CRAN (2026-03-11)
#revdep/run.R --rm ...

## Drop packages no longer on Bioconductor (2026-03-11)
#revdep/run.R --rm ...

## Too many cores due to detectCores()
pkgs_detectCores=()
#revdep/run.R --rm "${pkgs_detectCores[@]}"

## Requires sequential processing due to clashes, e.g. port and cache
pkgs_seq=()
#revdep/run.R --rm "${pkgs_seq[@]}"

## Too many threads
## Grandchildren only, same as above
pkgs_threads=(
  orbital  # via parsnip, sparklyr
  orbital  # via parsnip, sparklyr
  xpect    # via future, furrr
  VIM      # via future
)
revdep/run.R --rm "${pkgs_threads[@]}"

## Too many cores
## Grandchildren only, same as above
pkgs_cores=(
  ale        # via future, furrr
  couplr     # via future, future.apply
  EGAnet     # via future, future.apply
  FracFixR   # via future, future.apply
  fmeffects  # via future, furrr
  gtfs2emis  # via future, furrr
  gtfs2gps   # via future, furrr
  simIDM     # via future, furrr
  signeR     # via future, future.apply
  teal       # via shinytest2
)
revdep/run.R --rm "${pkgs_cores[@]}"

## Run revdep check
revdep/run.R


## ---------------------------------------------------------------------
## Phase 2
## ---------------------------------------------------------------------
## Set: Too many threads
revdep/run.R --add "${pkgs_threads[@]}"
OMP_NUM_THREADS=4 revdep/run.R

## Set: Too many cores
revdep/run.R --add "${pkgs_cores[@]}"
OMP_NUM_THREADS=4 NSLOTS=4 revdep/run.R

## Sequential
revdep/run.R --add "${pkgs_seq[@]}"
NSLOTS=1 revdep/run.R
