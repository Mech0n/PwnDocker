FROM mechan/ubuntu2.27

RUN apt install -y git python-dev && pip install cffi pwntools==4.3.0 z3-solver

RUN git clone --depth 1 https://github.com/Mech0n/Pwngdb.git /root/Pwngdb && \
    cat /root/Pwngdb/.gdbinit  >> /root/.gdbinit