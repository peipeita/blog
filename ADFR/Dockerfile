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

# Download and unpack the tar file
RUN wget https://ccsb.scripps.edu/adfr/download/1038/ADFRsuite_x86_64Linux_1.0.tar.gz \
  && tar zxvf ADFRsuite_x86_64Linux_1.0.tar.gz

# Run the installing script
RUN cd ADFRsuite_x86_64Linux_1.0 \
  && ./install.sh -d /opt/ADFR1.0 -c 0

# Add ADFR1.0 to the PATH
ENV PATH="/opt/ADFR1.0/bin:${PATH}"

CMD ["/bin/bash"]
