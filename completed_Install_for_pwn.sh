#!/bin/bash
dpkg --add-architecture i386 && \
    apt-get -y update && \
    apt install -y \
    libc6:i386 \
    libc6-dbg:i386 \
    libc6-dbg \
    lib32stdc++6 \
    g++-multilib \
    cmake \
    net-tools \
    iputils-ping \
    libffi-dev \
    libssl-dev \
    python3-dev \
    python3-pip \
    build-essential \
    ruby \
    ruby-dev \
    nasm \
    wget \
    gdb \
    gdb-multiarch \
    netcat \
    git \
    patchelf \

python3 -m pip install -U pip && \
    python3 -m pip install --no-cache-dir \
    ropgadget \
    pwntools \
    ropper \
    capstone \

gem install one_gadget seccomp-tools && rm -rf /var/lib/gems/2.*/cache/*

git clone --depth 1 https://github.com/pwndbg/pwndbg && \
    cd pwndbg && chmod +x setup.sh && ./setup.sh