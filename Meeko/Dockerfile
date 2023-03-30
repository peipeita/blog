FROM ubuntu:latest

RUN dpkg --add-architecture amd64 \
    && apt-get update \
    && apt-get install -y \
        wget \
        tar \
        python3 \
        python3-pip \
        libc6:amd64 \
        libgcc-s1:amd64 \
        libstdc++6:amd64 \
        cmake \
        g++

RUN wget https://github.com/openbabel/openbabel/archive/refs/tags/openbabel-3-1-1.tar.gz && \
    tar xzf openbabel-3-1-1.tar.gz && \
    mkdir build && \
    cd build && \
    cmake ../openbabel-openbabel-3-1-1 -DRUN_SWIG=ON -DPYTHON_BINDINGS=ON -DENABLE_TESTS=ON && \
    make -j $(nproc) && \
    make install && \
    cd .. && \
    rm -rf openbabel-3-1-1.tar.gz openbabel-openbabel-3-1-1

ENV PYTHONPATH=/usr/local/lib:$PYTHONPATH

# Install meeko and numpy
RUN pip3 install -U numpy openbabel meeko

CMD ["python3", "-c", "import openbabel; print('OpenBabel version:', openbabel.__version__)"]