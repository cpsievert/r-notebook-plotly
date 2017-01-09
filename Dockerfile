FROM jupyter/r-notebook:6399d2faf16f

MAINTAINER Carson Sievert <cpsievert1@gmail.com>

RUN Rscript -e "devtools::install_github('ropensci/plotly')"