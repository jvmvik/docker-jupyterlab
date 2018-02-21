FROM conda/miniconda3

MAINTAINER Victor Benarbia "victor.benarbia@arm.com"

RUN conda install -c conda-forge jupyterlab
RUN mkdir /work
WORKDIR /work
EXPOSE 8888
EXPOSE 8080
ENTRYPOINT ["jupyter", "lab", "--ip=0.0.0.0", "--no-browser"]
