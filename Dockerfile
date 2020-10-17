FROM registry.redhat.io/ubi7/go-toolset

EXPOSE 8080
	
RUN git clone https://github.com/rludva/sputnik.git && \
    export GOPATH=/opt/app-root/src/sputnik && \
    cd /opt/app-root/src/sputnik/src/bot && /opt/rh/go-toolset-1.13/root/usr/bin/go test -v && \
    cd /opt/app-root/src/sputnik && /opt/rh/go-toolset-1.13/root/usr/bin/go build sputnik.go

ENTRYPOINT /opt/app-root/src/sputnik/sputnik
