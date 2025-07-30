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
COPY buildroot-external-tree.tar.gz /root/buildroot-external-tree.tar.gz
RUN tar -xf ~/buildroot-external-tree.tar.gz -C ${EXTERNAL_TREE} --strip-components=1 &&\
    rm ~/buildroot-external-tree.tar.gz

# RUN cd ~ && git clone https://gitlab.com/buildroot.org/buildroot.git &&\
#     cd buildroot &&\
#     git checkout tags/2024.11 -b 2024.11.x

RUN cd /root/buildroot/ && make "BR2_EXTERNAL=${EXTERNAL_TREE}" solovey_rpi4b_64_defconfig 
#RUN make "O=${EXTERNAL_TREE}/output" solovey_rpi4b_64_defconfig
RUN cd /root/buildroot/ && make -j$(nproc) sdk

