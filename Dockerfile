FROM registry.redhat.io/ubi7/go-toolset

EXPOSE 8080

RUN mkdir go && cd go && git clone https://github.com/rludva/sputnik.git
RUN go build
RUN mv sputnik /opt/app-root

CMD /opt/app-root/sputnik
