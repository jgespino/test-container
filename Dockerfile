FROM ubuntu
SHELL ["bash", "-c"]
RUN apt update && apt install -y --no-install-recommends openssh-server telnet && mkdir -p /run/sshd
ENTRYPOINT ["/usr/sbin/sshd", "-D"]
