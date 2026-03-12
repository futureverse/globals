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
pkgs=(ale couplr EGAnet FracFixR fmeffects gtfs2emis gtfs2gps simIDM signeR sovereign simpr teal)
revdep/run.R --rm "${pkgs[@]}"
# revdep/run.R --add "${pkgs[@]}"
# NSLOTS=8 revdep/run.R

## Too many threads
pkgs=(orbital orbital xpect VIM)
revdep/run.R --rm "${pkgs[@]}"
# revdep/run.R --add "${pkgs[@]}"
# OMP_NUM_THREADS=4 NSLOTS=4 revdep/run.R

