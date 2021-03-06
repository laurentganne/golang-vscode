# https://github.com/ctaggart/golang-vscode
# https://hub.docker.com/r/ctaggart/golang-vscode/

# https://golang.org/
# https://hub.docker.com/_/golang/
# https://github.com/docker-library/golang
FROM golang:latest

COPY root /root

ENV DEBIAN_FRONTEND noninteractive

# for development
# ip=`ifconfig bridge100 | grep inet | awk '$1=="inet" {print $2}'`
# docker run --rm -it -v $PWD/root:/root -w /root -e DISPLAY=$ip:0 golang:latest

RUN cd /root \
  && ./install-apt-packages.sh \
  && useradd -m vscode -s /bin/bash \
  && mkdir -p /home/vscode/go \
  && chown vscode:vscode /home/vscode/go \
  && mkdir -p /home/vscode/dev \
  && chown vscode:vscode /home/vscode/dev

COPY --chown=vscode:vscode user/terminator.config /home/vscode/.config/terminator/config
COPY --chown=vscode:vscode user/bash_profile /home/vscode/.bash_profile


WORKDIR /root
CMD su - vscode -c "code -w ."
