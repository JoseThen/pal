FROM alpine:latest

RUN apk add --update nodejs npm curl

COPY --from=golang:1.19.5-alpine /usr/local/go/ /usr/local/go/

ENV PATH="/usr/local/go/bin:${PATH}"

