FROM mechan/ubuntu2.27

RUN sed -i -re 's/([a-z]{2}\.)?mirrors.aliyun.com/archive.ubuntu.com/g' /etc/apt/sources.list && \
    apt update -y && \
    apt install netcat qemu -y && \
    pip install z3-solver && \
    gem install seccomp-tools

RUN git clone --depth 1 https://github.com/Mech0n/Pwngdb.git /root/Pwngdb && \
    cat /root/Pwngdb/.gdbinit  >> /root/.gdbinit