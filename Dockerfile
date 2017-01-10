FROM jupyter/r-notebook:6399d2faf16f

MAINTAINER Carson Sievert <cpsievert1@gmail.com>

USER root

RUN echo 'options(repos = c(CRAN = "https://cran.rstudio.com/"), download.file.method = "wget")' >> /etc/R/Rprofile.site \
	&& Rscript -e "install.packages('plotly')"
