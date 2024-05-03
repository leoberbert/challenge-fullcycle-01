FROM golang:alpine as builder

WORKDIR /go/src/hello

COPY . .

RUN go build -o /hello main.go

FROM scratch

COPY --from=builder /hello /hello

CMD ["/hello"]
