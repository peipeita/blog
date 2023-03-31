FROM continuumio/miniconda3

RUN conda install -c conda-forge numpy openbabel scipy rdkit \
  && pip install meeko

CMD ["/bin/bash"]