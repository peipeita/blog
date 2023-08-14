FROM continuumio/miniconda3

WORKDIR /app

RUN conda config --add channels bioconda && \
    conda install -y -c bioconda mutmap

CMD [ "/bin/bash" ]
