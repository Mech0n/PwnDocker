FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN dpkg --add-architecture i386 &&\
    apt-get update -y &&\
    apt install -y \
    python \
    python3-pip \
    gcc \
    gdb \
    git \
    wget \
    gem \
    ruby \
    tmux \
    python-setuptools \
    libc6-dbg\
    make \
    netcat \
    ruby-dev \
    qemu-user \
    qemu-system

RUN   gem install one_gadget seccomp-tools

RUN apt install -y python-dev python-pip && \
    python -m pip install --no-cache-dir pwntools==4.3.1 z3-solver && \
    git clone --depth 1 https://github.com/pwndbg/pwndbg /root/pwngdb && \
    cd /root/pwngdb && chmod +x setup.sh && sed -i -re 's/sudo //g' ./setup.sh && ./setup.sh && \
    apt clean