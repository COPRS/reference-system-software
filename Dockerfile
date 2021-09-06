FROM ubuntu

RUN apt update -y &&\
    apt upgrade -y &&\
    apt install -y curl &&\
    curl -O -L https://github.com/jgm/pandoc/releases/download/2.14.2/pandoc-2.14.2-1-amd64.deb &&\
    apt install -y ./pandoc-2.14.2-1-amd64.deb &&\
    rm pandoc-2.14.2-1-amd64.deb &&\
    apt-get clean autoclean &&\
    apt-get autoremove --yes &&\
    rm -rf /var/lib/{apt,dpkg,cache,log}/
