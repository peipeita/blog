FROM rocker/tidyverse

RUN apt-get update --fix-missing -y && \
    apt-get install -y libxml2-dev libcurl4-openssl-dev openssl r-cran-openssl libssl-dev libglpk-dev

RUN Rscript -e 'install.packages(c("BiocManager", "ggrepel", "ggthemes", "ggnewscale", "zoo", "ggupset", "ggnewscale", "svglite"))' && \
    Rscript -e 'BiocManager::install(c("AnnotationDbi", "AnnotationForge", "GO.db", "GOSemSim", "rrvgo", "clusterProfiler", "DESeq2", "org.At.tair.db", "Heatplus", "sva"), ask = FALSE)'