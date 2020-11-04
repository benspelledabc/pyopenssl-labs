FROM alpine

MAINTAINER Ben SpelledABC (https://github.com/BenSpelledABC)

COPY ./eggsample.sh /opt/

RUN apk update && \
  apk add --no-cache openssl && \
  rm -rf /var/cache/apk/*

ENTRYPOINT ["openssl"]

