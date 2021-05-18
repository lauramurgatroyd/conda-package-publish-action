FROM continuumio/miniconda3:4.7.10

LABEL "repository"="https://github.com/m0nhawk/conda-package-publish-action"
LABEL "maintainer"="Andrew Prokhorenkov <andrew.prokhorenkov@gmail.com>"

RUN conda install -y anaconda-client conda-build
RUN conda install -c anaconda make
RUN conda install -c conda-forge gcc

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
