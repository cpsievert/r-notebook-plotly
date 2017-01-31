FROM jupyter/r-notebook:6399d2faf16f

MAINTAINER Carson Sievert <cpsievert1@gmail.com>

USER root

RUN echo 'options(repos = c(CRAN = "https://cran.rstudio.com/"), warn = -1); zz <- file("messages.Rout", open = "wt"); sink(zz, type = "message")' >> ~/.Rprofile \
	&& echo 'TAR = "/bin/tar"' >> ~/.Renviron \
	&& Rscript -e "update.packages(ask=F); install.packages('ggthemes'); install.packages('DT'); devtools::install_github('ropensci/plotly')"
