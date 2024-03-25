#!/bin/bash
sleep 12
# source /usr/local/bin/.env
mkdir -p /var/www/html
chown -R www-data:www-data /var/www/html
chown -R www-data:www-data wordpress
cp -r wordpress/* /var/www/html/wordpress
cd /var/www/html/wordpress
mv wp-config-sample.php wp-config.php

sed -i -r "s/database_name_here/$WORDPRESS_DB_NAME/1" wp-config.php  
sed -i -r "s/username_here/$WORDPRESS_DB_USER/1" wp-config.php      
sed -i -r "s/password_here/$WORDPRESS_DB_PASSWORD/1" wp-config.php   
sed -i -r "s/localhost/$WORDPRESS_DB_HOST/1" wp-config.php          

mkdir /run/php
sed -i 's#listen = /run/php/php7.3-fpm.sock#listen = 0.0.0.0:9000#' /etc/php/7.3/fpm/pool.d/www.conf
/usr/sbin/php-fpm7.3 -F

