FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive
# sed -i -re 's/([a-z]{2}\.)?archive.ubuntu.com|security.ubuntu.com/old-releases.ubuntu.com/g' /etc/apt/sources.list
RUN dpkg --add-architecture i386 &&\
    apt-get update -y &&\
    apt install -y \
    python \
    python3.8-pip \
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
    ruby-dev 

# RUN       wget http://security.ubuntu.com/ubuntu/pool/main/g/glibc/libc6-dev-i386_2.27-3ubuntu1.2_amd64.deb -o /root/libc6-dev-i386_2.27-3ubuntu1.2_amd64.deb && \
#           apt install /root/libc6-dev-i386_2.27-3ubuntu1.2_amd64.deb \
#           libc6-dev-i386=2.27-3ubuntu1.2 \
#           libc6-dbg:i386=2.27-3ubuntu1.2 \

RUN   gem install one_gadget

RUN apt install -y python-dev && \
    pip3 install pwntools z3-solver -i https://mirrors.aliyun.com/pypi/simple/

RUN git clone --depth 1 https://github.com/pwndbg/pwndbg /root/pwngdb && \
    cd /root/pwngdb && chmod +x setup.sh && ./setup.sh

RUN git clone --depth 1 https://github.com/Mech0n/Pwngdb.git /root/Pwngdb && \
    cd /root/Pwngdb && cat /root/Pwngdb/.gdbinit  >> /root/.gdbinit