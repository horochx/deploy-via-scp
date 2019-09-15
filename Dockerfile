FROM alpine:3.10

COPY LICENSE README.md /

COPY entrypoint.sh /entrypoint.sh

RUN apk add --no-cache openssh

ENTRYPOINT ["/entrypoint.sh"]
