FROM php:8-fpm-alpine

RUN docker-php-ext-install pdo pdo_mysql

COPY ./cron/crontab /etc/crontabs/root

CMD ["crond", "-f"]