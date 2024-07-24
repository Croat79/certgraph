FROM golang:1.23rc2-alpine3.20

RUN apk add --update git make

WORKDIR /src/certgraph
ADD . .

ENV CGO_ENABLED=0
RUN make install

ENTRYPOINT [ "certgraph" ]