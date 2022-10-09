FROM --platform=linux/amd64 jpgomezz/quarto:final

RUN Rscript -e 'install.packages("drat", repos="http://cran.us.r-project.org")'
RUN Rscript -e 'install.packages("glue", repos="http://cran.us.r-project.org")'

ENTRYPOINT ["tail", "-f", "/dev/null"]
