FROM ubuntu:18.04

RUN apt-get update \
    && apt-get install -y wget tar make

WORKDIR /usr/local/bin
RUN wget https://sourceforge.net/projects/subread/files/subread-2.0.1/subread-2.0.1-Linux-x86_64.tar.gz \
    && tar zxvf subread-2.0.1-Linux-x86_64.tar.gz \
    && mv subread-2.0.1-Linux-x86_64/* . \
    && mv bin/* .
