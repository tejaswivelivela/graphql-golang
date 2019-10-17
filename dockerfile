FROM golang:alpine
RUN apk update
RUN apk add git
COPY . /go/src/graphql-golang
WORKDIR /go/src/graphql-golang
RUN go version
WORKDIR /go/src/graphql-golang/server
RUN go install -v
RUN go build -o app;
RUN chmod 700 app
CMD ["/go/src/graphql-golang/server/app"]
