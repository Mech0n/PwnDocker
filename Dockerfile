FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

RUN   dpkg --add-architecture i386 &&\
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
      libc6-dev-i386 \
      libc6-dbg \
      libc6-dbg:i386 \
      python-setuptools \
      make \
      netcat \
      ruby-dev \
      ruby-full \
      libffi6 \
      libffi-dev

RUN   gem install one_gadget

RUN   pip install cffi pwntools==4.3.0 z3-solver

RUN git clone --depth 1 https://github.com/pwndbg/pwndbg && \
    cd pwndbg && chmod +x setup.sh && ./setup.sh

RUN git clone --depth 1 https://github.com/Mech0n/Pwngdb.git /root/Pwngdb && \
    cd /root/Pwngdb && cat /root/Pwngdb/.gdbinit  >> /root/.gdbinit