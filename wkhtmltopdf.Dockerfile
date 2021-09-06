FROM ubuntu

RUN apt update -y &&\
    apt upgrade -y &&\
    apt install -y curl &&\
    curl -O -L https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6-1/wkhtmltox_0.12.6-1.focal_amd64.deb &&\
    apt install -y ./wkhtmltox_0.12.6-1.focal_amd64.deb &&\
    rm wkhtmltox_0.12.6-1.focal_amd64.deb &&\
    apt-get clean autoclean &&\
    apt-get autoremove --yes &&\
    rm -rf /var/lib/{apt,dpkg,cache,log}/

ENTRYPOINT ["wkhtmltopdf"]

# Show the extended help
CMD ["-h"]
