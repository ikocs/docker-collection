FROM ubuntu:24.04
SHELL ["/bin/bash", "-c"]

RUN apt-get update -y && \
    apt-get install -y file bc build-essential wget rsync libssl-dev libncurses-dev gcc g++ cpio unzip bzip2 libgnutls28-dev make git locales 

RUN cd ~ && wget -nv https://buildroot.org/downloads/buildroot-2024.11.4.tar.gz 
RUN mkdir ~/buildroot && ls -lah 
RUN tar -xf ~/buildroot-2024.11.4.tar.gz -C ~/buildroot --strip-components=1 &&\
    rm ~/buildroot-2024.11.4.tar.gz

RUN locale-gen en_US.utf8

ENV EXTERNAL_TREE=/root/buildroot-et
WORKDIR $EXTERNAL_TREE
