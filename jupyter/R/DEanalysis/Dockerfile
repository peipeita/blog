FROM condaforge/miniforge3:24.1.2-0

WORKDIR /workspace

RUN conda update -n base -c defaults conda -y \
    && conda install -c conda-forge jupyter -y \
    && conda install -c conda-forge r-essentials r-base -y \
    && conda clean -afy

RUN conda install -c conda-forge r-tidyverse r-plotly r-multcomp r-nparcomp -y \
    && conda clean -afy

RUN DEBIAN_FRONTEND=noninteractive apt-get update -y \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y libxml2-dev libcurl4-openssl-dev openssl r-cran-openssl libssl-dev libglpk-dev

# Set a CRAN mirror and install R packages
RUN R -e "options(repos = list(CRAN = 'https://cloud.r-project.org'))" \
      -e 'install.packages(c("BiocManager", "ggrepel", "ggthemes", "ggnewscale", "zoo", "ggupset", "svglite"))' \
      -e 'BiocManager::install(c("AnnotationDbi", "AnnotationForge", "GO.db", "GOSemSim", "rrvgo", "clusterProfiler", "DESeq2", "org.At.tair.db", "Heatplus", "sva"), ask = FALSE)'

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
