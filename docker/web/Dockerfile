# Using apache with php version 8
FROM php:8-apache

# Environment variable settings (Timezone set to Japan)
ENV TZ Asia/Tokyo
# Environment variable settings (DocumentRoot settings)
ENV APACHE_DOCUMENT_ROOT /app/htdocs

# Set Timezone to Japan
RUN ln -snf /usr/share/zoneinfo/${TZ} /etc/localtime \
  && echo ${TZ} > /etc/timezone

# Install the required extensions
RUN apt-get update \
  && docker-php-ext-install pdo_mysql

# DocumentRoot settings
RUN sed -ri -e \
  's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' \
  /etc/apache2/sites-available/*.conf

# DocumentRoot settings
RUN sed -ri -e \
  's!/var/www/!${APACHE_DOCUMENT_ROOT}!g' \
  /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf