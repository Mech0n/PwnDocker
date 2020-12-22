FROM registry.cn-hangzhou.aliyuncs.com/yisumi/pwndocker:2.0

RUN sed -i -re 's/([a-z]{2}\.)?mirrors.aliyun.com/archive.ubuntu.com/g' /etc/apt/sources.list && \
    apt update -y && \
    apt install ruby-dev netcat qemu -y && \
    gem install seccomp-tools