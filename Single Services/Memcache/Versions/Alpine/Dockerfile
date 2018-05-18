FROM alpine:latest

RUN apk add --no-cache memcached

USER daemon
EXPOSE 11211

CMD ["memcached", "-m", "256"]
