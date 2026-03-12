#! /usr/bin/env bash

## Add packages to check
revdep/run.R --add-children
revdep/run.R --add-grandchildren

## Drop packages archived on CRAN (2026-03-11)
revdep/run.R --rm doublIn forecastML mbbe oncomsm

## Drop packages failing on CRAN (2026-03-11)
revdep/run.R --rm arkdb delimtools dispositionEffect BayesPET EpiForsk httpgd

## Drop packages failing on Bioconductor (2026-01-31)
revdep/run.R --rm dar MineICA pgxRpi

## Too many cores
revdep/run.R --rm ale couplr EGAnet FracFixR fmeffects simIDM signeR sovereign xpect simpr teal
# revdep/run.R --add ale couplr FracFixR fmeffects simIDM signeR sharp tidySEM insight semtree sovereign simpr teal
# NSLOTS=8 revdep/run.R
# revdep/run.R --add xpect
# OMP_NUM_THREADS=4 NSLOTS=4 revdep/run.R
