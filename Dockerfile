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
    jq \
    xz-utils \
    && rm -rf /var/lib/apt/lists/*
# RUN git clone https://github.com/niklasb/libc-database /libc-database && \
#     git -C /libc-database checkout b3034c8eddf02ae39102c62935dbec261d1b4fd7
# use repo with fixed downloading for now
RUN git clone https://github.com/mariuszskon/libc-database /libc-database && \
    git -C /libc-database checkout b43c7a42f1292d40b7c173b192a447092542197d
WORKDIR /libc-database
RUN ./get all
