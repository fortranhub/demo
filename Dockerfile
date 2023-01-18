FROM golang

ENV DATABASE_HOST ""
ENV DATABASE_USER ""
ENV DATABASE_PASSWORD ""
ENV DATABASE_PORT ""

COPY . /app

WORKDIR /app

RUN go mod init server.go && go mod tidy

ENTRYPOINT ["go", "run"]

CMD ["server.go"]
