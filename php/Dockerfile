FROM php:7.2-fpm-buster

ENV fpm_conf /usr/local/etc/php-fpm.d/www.conf
ENV php_vars /usr/local/etc/php/conf.d/docker-vars.ini

RUN mkdir -p /usr/share/man/man1mkdir -p /usr/share/man/man1 \
    && APT_KEY_DONT_WARN_ON_DANGEROUS_USAGE=1 \
    && apt-get update && apt-get install -y --no-install-recommends \
        curl \
        libpng-dev \
        libxslt-dev \
        libjpeg-dev \
    && rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-configure gd \
        --with-gd \
        --with-png-dir=/usr/include/ \
        --with-jpeg-dir=/usr/include

# Install defualt extension
RUN docker-php-ext-install \
        bcmath \
        pdo \
        pdo_mysql \
        mysqli \
        gd \
        exif \
        xsl \
        soap \
        zip \
        opcache \
        intl \
        pcntl

RUN curl -sS https://getcomposer.org/installer | php \
    && mv composer.phar /usr/local/bin/composer