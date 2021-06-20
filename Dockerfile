FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
    git \
    binutils \
    file \
    wget \
    rpm2cpio \
    cpio \
    zstd \
    xz-utils \
    && rm -rf /var/lib/apt/lists/*
RUN git clone https://github.com/niklasb/libc-database /libc-database && \
    git -C /libc-database checkout 658b8708ebbcccc30d438f1577b95eddb744ba9d
WORKDIR /libc-database
RUN ./get all
