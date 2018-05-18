FROM ubuntu:16.04

RUN apt-get update; apt-get install -y memcached

USER daemon
EXPOSE 11211

CMD ["memcached", "-m", "256"]
