FROM debian:10
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    php-fpm php-mysql php-common php-curl php-gd php-mbstring php-xml php-xmlrpc php-soap php-intl php-zip \
    wget unzip && \
    rm -rf /var/lib/apt/lists/*
RUN wget https://wordpress.org/latest.tar.gz && \
    tar -xvzf latest.tar.gz

COPY wordpress/* /var/www/html/wordpress
# Ensure proper permissions
RUN chown -R www-data:www-data /var/www/html/wordpress

# Copy the custom wp-config.php to the correct location
COPY tools/wp-config.php /var/www/html/wordpress/wp-config.php

# Expose port 9000 for php-fpm
EXPOSE 9000

# Start php-fpm in the foreground
CMD ["php-fpm", "-F"]