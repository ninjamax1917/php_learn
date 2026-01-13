FROM php:8.4-fpm

# Установка системных зависимостей и PHP-расширений
RUN apt-get update && apt-get install -y \
    unzip \
    && docker-php-ext-install pdo_mysql

# Установка последней версии Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html