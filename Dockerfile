FROM golang:1.18

RUN adduser nonroot

USER nonroot

WORKDIR /app

CMD ["tail", "-f", "/dev/null"]