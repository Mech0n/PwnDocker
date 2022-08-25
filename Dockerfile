FROM ubuntu:21.10

ENV DEBIAN_FRONTEND=noninteractive
RUN sed -i -re 's/([a-z]{2}\.)?archive.ubuntu.com|security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list
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

RUN apt install -y python3.9-dev && \
    pip3 install pwntools z3-solver

RUN git clone --depth 1 https://github.com/pwndbg/pwndbg /root/pwngdb && \
    cd /root/pwngdb && chmod +x setup.sh && ./setup.sh