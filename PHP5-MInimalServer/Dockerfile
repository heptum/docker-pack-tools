FROM alpine:3.3

RUN apk update ;
RUN apk add --no-cache  \
    php-xcache php-intl php-json php-curl \
    php-cli php-opcache php-phar php-dom  \
    php-openssl curl wget 


RUN mkdir /app
WORKDIR /app

EXPOSE 80

CMD ["php", "-S", "0.0.0.0:80", "-t", "/app"]