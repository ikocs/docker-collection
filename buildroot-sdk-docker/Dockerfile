FROM ubuntu:24.04
SHELL ["/bin/bash", "-c"]

RUN apt-get update -y && \
    apt-get install -y build-essential wget rsync unzip bzip2 make git locales cmake gdb-multiarch openssh-client

RUN locale-gen en_US.utf8 
RUN mkdir -p /root/br-sdk/sdk 

# Необходимо сформировать SDK внутри buildroot, в котором собирается образ
COPY aarch64-buildroot-linux-gnu_sdk-buildroot.tar.gz /root/br-sdk/aarch64-buildroot-linux-gnu_sdk-buildroot.tar.gz
RUN cd /root/br-sdk &&\
    tar -xf ./aarch64-buildroot-linux-gnu_sdk-buildroot.tar.gz -C ./sdk --strip-components=1 &&\
    rm ./aarch64-buildroot-linux-gnu_sdk-buildroot.tar.gz
