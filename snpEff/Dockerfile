FROM conda/miniconda3

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

RUN apt-get update --fix-missing && \
    apt-get install -y -q wget unzip && \
    apt-get clean

RUN mkdir -p /workspace
WORKDIR /workspace

RUN conda install -c anaconda openjdk && \
    wget http://sourceforge.net/projects/snpeff/files/snpEff_latest_core.zip && \
    unzip snpEff_latest_core.zip && \
    rm -f snpEff_latest_core.zip

RUN rm -rf /var/lib/apt/lists/*

RUN echo "MpTak_v6.1.genome : MpTak_v6.1" >>snpEff/snpEff.config && \
    mkdir snpEff/data/MpTak_v6.1 && \
    cd snpEff/data/MpTak_v6.1 && \
    wget https://marchantia.info/download/MpTak_v6.1/MpTak_v6.1r1.gff.gz && \
    mv  MpTak_v6.1r1.gff.gz genes.gff.gz && \
    mkdir ../data/genomes && \
    cd ../data/genomes && \
    wget https://marchantia.info/download/MpTak_v6.1/MpTak_v6.1.genome.fasta.gz && \
    mv MpTak_v6.1.genome.fasta.gz MpTak_v6.1.fa.gz && \
    cd ../../ && \
    java -jar snpEff.jar build -gff3 -v MpTak_v6.1

RUN mkdir -p /local_volume
WORKDIR /local_volume