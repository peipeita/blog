FROM continuumio/miniconda3

WORKDIR /app

RUN conda config --add channels bioconda && \
    conda install -y -c bioconda mutmap

# This isn't the most elegant solution and might not work if there are significant differences between versions.
RUN ln -s /opt/conda/lib/libcrypto.so.1.1 /opt/conda/lib/libcrypto.so.1.0.0

CMD [ "/bin/bash" ]
