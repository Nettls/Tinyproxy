FROM alpine:latest

RUN apk add --no-cache tinyproxy

COPY usr/local/bin/ /usr/local/bin/

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
