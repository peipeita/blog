# Use an official base image
FROM ubuntu:20.04

# Set the environment variable
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary packages and MCScanX
RUN apt update && apt install -y git openjdk-11-jdk-headless wget unzip build-essential \
  && git clone https://github.com/wyp1125/MCScanX.git \
  && cd MCScanX \
  && make

# Reset DEBIAN_FRONTEND
ENV DEBIAN_FRONTEND=

# Modify the PATH to include MCScanX
ENV PATH="${PATH}:/MCScanX"

# Set MCScanX as the work directory (optional)
WORKDIR /workdir
