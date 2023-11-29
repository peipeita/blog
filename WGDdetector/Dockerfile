# Start with a Perl base image
FROM perl:5.30

# Install Python 2.7 and other dependencies
RUN apt-get update && apt-get install -y --fix-missing \
    python2.7 \
    python2.7-dev \
    r-base \
    parallel \
    wget \
    git \
    ncbi-blast+ \
    mmseqs2 \
    mcl \
    muscle

RUN wget https://gite.lirmm.fr/atgc/FastME/-/raw/master/tarball/fastme-2.1.6.4.tar.gz \
    && tar -xzf fastme-2.1.6.4.tar.gz \
    && cd fastme-2.1.6.4 \
    && ./configure \
    && make \
    && make install \
    && cd .. \
    && rm -rf fastme-2.1.6.4.tar.gz fastme-2.1.6.4

# Clone the WGDdetector repository
RUN git clone https://github.com/yongzhiyang2012/WGDdetector.git

# Set the working directory to the cloned repository
WORKDIR /WGDdetector

# Replace Perl script headers (if necessary)
# (Add commands to replace the Perl path in the scripts)

# Expose the necessary port (if applicable)
EXPOSE 80

# Command to run the application
CMD ["perl", "setup.pl"]
