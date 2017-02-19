from php:7.0

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -yq \
    build-essential  \
    python-software-properties  \
    git  \
    zip  \
    unzip  \
    zlib1g-dev  \
    curl  \
    sudo \
    net-tools

RUN docker-php-ext-install pdo_mysql zip mbstring pcntl

RUN curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
RUN apt-get install nodejs -yq

RUN curl -sS https://getcomposer.org/installer | sudo php -- --install-dir=/usr/local/bin --filename=composer

