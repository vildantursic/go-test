FROM golang:1.8

WORKDIR /go/src/app
COPY ./kw-platform-task .

RUN go get -d -v ./...
RUN go install -v ./...

CMD ["app"]