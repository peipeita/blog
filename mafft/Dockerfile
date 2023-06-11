FROM ubuntu:latest

RUN dpkg --add-architecture amd64 \
    && apt-get update \
    && apt-get install -y \
        wget \
        tar \
        python3 \
        libc6:amd64 \
        libgcc-s1:amd64 \
        libstdc++6:amd64

RUN wget https://mafft.cbrc.jp/alignment/software/mafft_7.490-1_amd64.deb \
    && dpkg -i mafft_7.490-1_amd64.deb

CMD ["/bin/bash"]