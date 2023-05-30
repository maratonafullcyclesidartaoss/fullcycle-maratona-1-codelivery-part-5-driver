FROM golang:latest

RUN addgroup -S nonroot \
    && adduser -S nonroot -G nonroot

USER nonroot

WORKDIR /app

COPY driver.go .
COPY drivers.json .
COPY go.mod .
COPY go.sum .

RUN GOOS=linux go build driver.go

CMD ["./driver"]