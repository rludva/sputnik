FROM registry.redhat.io/ubi7/go-toolset
LABEL maintainer="Radomir Ludva"

EXPOSE 8080
	
RUN git clone https://github.com/rludva/sputnik.git && \
    export GOPATH=/opt/app-root/src/sputnik && \
    cd /opt/app-root/src/sputnik/src && /opt/rh/go-toolset-1.13/root/usr/bin/go build -o ../sputnik

ENTRYPOINT /opt/app-root/src/sputnik/sputnik
