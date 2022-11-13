FROM golang

USER 0

COPY ./todo/* /app/

WORKDIR /app

RUN go mod tidy

CMD ["go", "run"]
