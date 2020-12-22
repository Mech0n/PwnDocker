FROM ubuntu:16.04

ENV DEBIAN_FRONTEND=noninteractive

RUN dpkg --add-architecture i386 &&\
    apt-get update -y &&\
    apt install -y \
    python \
    python-pip \
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
    libffi6 \
    libffi-dev \
    ruby-dev \
    qemu-user \
    qemu-system \
    software-properties-common && \
    apt-add-repository ppa:brightbox/ruby-ng -y && \
    apt update -y && \
    apt-get install ruby2.4 ruby2.4-dev -y

RUN gem install one_gadget seccomp-tools

RUN apt install -y python-dev && \
    pip install pwntools z3-solver

RUN git clone --depth 1 https://github.com/pwndbg/pwndbg /root/pwngdb && \
    cd /root/pwngdb && chmod +x setup.sh && ./setup.sh

RUN git clone --depth 1 https://github.com/Mech0n/Pwngdb.git /root/Pwngdb && \
    cd /root/Pwngdb && cat /root/Pwngdb/.gdbinit  >> /root/.gdbinit