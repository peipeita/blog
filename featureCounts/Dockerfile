FROM ubuntu:18.04

ARG fc_version="2.0.1"

RUN curl -fsSL http://downloads.sourceforge.net/project/subread/subread-${featurecounts_version}/subread-${featurecounts_version}-Linux-x86_64.tar.gz -o /opt/subread-${featurecounts_version}-Linux-x86_64.tar.gz && \
    tar xvf /opt/subread-${featurecounts_version}-Linux-x86_64.tar.gz -C /opt/ && \
    ln -s /opt/subread-${featurecounts_version}-Linux-x86_64/bin/featureCounts /usr/local/bin/featureCounts && \
    rm /opt/subread-${featurecounts_version}-Linux-x86_64.tar.gz