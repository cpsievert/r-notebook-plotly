FROM jupyter/r-notebook:6399d2faf16f

MAINTAINER Carson Sievert <cpsievert1@gmail.com>

USER root

RUN Rscript -e "install.packages('plotly')"
