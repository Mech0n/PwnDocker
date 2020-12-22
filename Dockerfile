FROM mechan/ubuntu2.27

RUN apt install netcat qemu -y && \
    pip install z3-solver && \
    gem install seccomp-tools

RUN git clone --depth 1 https://github.com/Mech0n/Pwngdb.git /root/Pwngdb && \
    cat /root/Pwngdb/.gdbinit  >> /root/.gdbinit