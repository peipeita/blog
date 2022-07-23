FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update -y; \
  apt install -y build-essential g++ cmake git-all; \
  git clone https://github.com/primer3-org/primer3.git primer3; \
  cd primer3/src; \
  make; \
  make test
ENV PATH=$PATH:/primer3/src
WORKDIR /primer3/
CMD ["primer3_core", "-h"]