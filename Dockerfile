FROM jupyter/r-notebook:6399d2faf16f

MAINTAINER Carson Sievert <cpsievert1@gmail.com>

USER root

RUN echo 'options(repos = c(CRAN = "https://cran.rstudio.com/"), download.file.method = "wget")' >> ~/.Rprofile \
	&& echo 'TAR = "/bin/tar"' >> ~/.Renviron \
	&& Rscript -e "update.packages(ask=F); devtools::install_github('ropensci/plotly')"
