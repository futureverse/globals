#! /usr/bin/env bash

## ---------------------------------------------------------------------
## Missing or outdated LaTeX packages
## ---------------------------------------------------------------------
false && R --quiet --no-save <<EOF
    tinytex::install_tinytex(force = TRUE)
    message("TeX root: ", tinytex::tinytex_root())
    tinytex::tlmgr_update()
    tinytex::tlmgr_install(c(
      "apacite",   # ctsem
      "blkarray",  # lme4
      "lineno",    # lme4
      "nowidow",   # QDNAseq
      "wrapfig",   # tramvs
      "thumbpdf"   # lme4
    ))
EOF


## Should second-generation reverse depdendencies be checked?
grandchildren=true

## ---------------------------------------------------------------------
## Phase 1
## ---------------------------------------------------------------------

## Add packages to check
revdep/run.R --add-children
${grandchildren} && revdep/run.R --add-grandchildren


## Packages failing to install on the local system
pkgs=()
${grandchildren} && pkgs+=(
  bnns             ## package 'OpenCL' fails to install
  metR             ## package 'proj4' fails to install
  TriDimRegression ## package 'rstantools' fails to install
)	
[ ${#pkgs[@]} -gt 0 ] && revdep/run.R --rm "${pkgs[@]}"



## Drop packages failing on CRAN (2026-10-10)
pkgs=()
${grandchildren} && pkgs+=(
  arkdb              # via future.apply
  BayesPET           # via future, furrr
  datacaged
  delimtools         # via future, furrr
  dispositionEffect  # via future, furrr
  EpiForsk           # via future, furrr
  httpgd             # via future
  tidymedia
)
[ ${#pkgs[@]} -gt 0 ] && revdep/run.R --rm "${pkgs[@]}"

## Drop packages failing on Bioconductor (2026-10-10)
pkgs=()
${grandchildren} && pkgs+=(
  dar     # via future, furrr
  pgxRpi  # via future, future.apply
  scLANE
  synergyfinder
)
[ ${#pkgs[@]} -gt 0 ] && revdep/run.R --rm "${pkgs[@]}"

## Drop packages no longer on CRAN (2026-10-10)
pkgs=(fmeffects)
${grandchildren} && pkgs+=(
)
[ ${#pkgs[@]} -gt 0 ] && revdep/run.R --rm "${pkgs[@]}"

## Drop packages no longer on Bioconductor (2026-10-10)
#revdep/run.R --rm ...


## Requires sequential processing due to clashes, e.g. port and cache
pkgs_seq=()
${grandchildren} && pkgs+=(
  fiery
)	
[ ${#pkgs_seq[@]} -gt 0 ] && revdep/run.R --rm "${pkgs_seq[@]}"

## Too many threads
pkgs_threads=()
${grandchildren} && pkgs_threads+=(
  orbital  # via parsnip, sparklyr
  xpect    # via future, furrr
  VIM      # via future
)
[ ${#pkgs_threads[@]} -gt 0 ] && revdep/run.R --rm "${pkgs_threads[@]}"

## Too many cores
## Grandchildren only, same as above
pkgs_cores=()
${grandchildren} && pkgs_cores+=(
  STARRS
)
[ ${#pkgs_cores[@]} -gt 0 ] && revdep/run.R --rm "${pkgs_cores[@]}"


## Run revdep check
revdep/run.R


## ---------------------------------------------------------------------
## Phase 2
## ---------------------------------------------------------------------
## Set: Too many threads
if [ ${#pkgs_threads[@]} -gt 0 ]; then
    revdep/run.R --add "${pkgs_threads[@]}"
    OMP_NUM_THREADS=4 revdep/run.R
fi

## Set: Too many cores
if [ ${#pkgs_cores[@]} -gt 0 ]; then
    revdep/run.R --add "${pkgs_cores[@]}"
    OMP_NUM_THREADS=4 NSLOTS=4 revdep/run.R
fi

## Sequential
if [ ${#pkgs_seq[@]} -gt 0 ]; then
    revdep/run.R --add "${pkgs_seq[@]}"
    NSLOTS=1 revdep/run.R
fi
