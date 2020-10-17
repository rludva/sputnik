FROM registry.redhat.io/ubi7/go-toolset

EXPOSE 8080
	
RUN mkdir -p go/src && cd go/src && git clone https://github.com/rludva/sputnik.git
RUN cp -r ./go/src/sputnik/bot ./go/src
RUN cd go/src/sputnik && /opt/rh/go-toolset-1.13/root/usr/bin/go build
RUN mv /opt/app-root/src/go/src/sputnik/sputnik /opt/app-root

ENTRYPOINT /opt/app-root/sputnik
