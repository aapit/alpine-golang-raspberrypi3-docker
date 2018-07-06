FROM resin/raspberrypi3-alpine-buildpack-deps:latest

ENV GO_VERSION 1.10

RUN apk add --no-cache go1.10

ENV GOROOT /usr/lib/go
ENV GOPATH /go
ENV PATH $GOPATH/bin:$GOROOT/bin:$PATH

RUN mkdir -p "$GOPATH/src" "$GOPATH/bin" && chmod -R 777 "$GOPATH"
WORKDIR $GOPATH

CMD ["/bin/bash"]
