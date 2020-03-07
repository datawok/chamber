FROM alpine:3.11

ENV CHAMBER_VERSION v2.8.0

RUN apk update \
 && apk --no-cache add ca-certificates wget \
 && update-ca-certificates

RUN mkdir -p /go/bin

RUN wget -q -O /go/bin/chamber https://github.com/segmentio/chamber/releases/download/$CHAMBER_VERSION/chamber-$CHAMBER_VERSION-linux-amd64
RUN chmod a+x /go/bin/chamber