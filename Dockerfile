FROM golang:latest

RUN addgroup -S nonroot \
    && adduser -S nonroot -G nonroot

USER nonroot

WORKDIR /app

CMD [ "tail", "-f", "/dev/null" ]