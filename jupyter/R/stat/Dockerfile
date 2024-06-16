FROM condaforge/miniforge3:24.1.2-0

WORKDIR /workspace

RUN conda update -n base -c defaults conda -y \
    && conda install -c conda-forge jupyter -y \
    && conda install -c conda-forge r-essentials r-base -y \
    && conda clean -afy

RUN conda install -c conda-forge r-tidyverse r-plotly r-multcomp r-nparcomp -y \
    && conda clean -afy

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
