# PwnContainer

#### Glibc 2.23 

```shell
docker pull registry.cn-hangzhou.aliyuncs.com/yisumi/pwndocker:1.0
```

- [X] gcc 
- [X] gdb 
- [X] git 
- [X] wget 
- [X] gem 
- [X] ruby 
- [X] tmux 
- [X] libc6-dev-i386 
- [X] libc6-dbg 
- [X] libc6-dbg:i386 
- [X] python-setuptools 
- [X] netcat 
- [X] pwntools
- [X] one_gadget
- [X] z3-solver
- [X] Pwngdb
- [X] pwndbg
- [ ] seccomp-tools

#### [Working] Glibc 2.27 

> 暂时基于zhihsi/dockerpwn:2.27镜像，来解决无法安装libc6-dev-i386=2.27-3ubuntu1.2安装问题。
>
> 目前遇到问题:
>
> 现在的Glibc2.27已经更新到2.27-3ubuntu1.4，修复了2.27-3ubuntu1.2在Double Free问题，所以暂时无法还原2.27-3ubuntu1.2的环境，暂时使用zhihsi/dockerpwn:2.27来还原2.27-3ubuntu1.2的环境。

- [x] gcc 
- [x] gdb 
- [x] git 
- [x] wget 
- [x] gem 
- [x] ruby 
- [x] tmux 
- [x] libc6-dev-i386 
- [x] libc6-dbg 
- [x] libc6-dbg:i386 
- [x] python-setuptools 
- [x] netcat 
- [x] pwntools
- [x] one_gadget
- [x] z3-solver
- [x] Pwngdb
- [x] pwndbg
- [ ] seccomp-tools

#### [Working] Glibc 2.29

- [x] gcc 
- [x] gdb 
- [x] git 
- [x] wget 
- [x] gem 
- [x] ruby 
- [x] tmux 
- [x] libc6-dev-i386 
- [x] libc6-dbg 
- [x] libc6-dbg:i386 
- [x] python-setuptools 
- [x] netcat 
- [x] pwntools
- [x] one_gadget
- [x] z3-solver
- [x] Pwngdb
- [x] pwndbg
- [ ] seccomp-tools