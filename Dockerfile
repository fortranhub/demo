FROM golang

USER 0

COPY ./todo/* /app/

WORKDIR /app
