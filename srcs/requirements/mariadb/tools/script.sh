#!/bin/bash
sed -i 's/bind-address\s*=\s*127\.0\.0\.1/bind-address = 0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf
mysqld_safe &
sleep 5
mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e "
CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;
CREATE USER  '$MYSQL_USER'@'$WORDPRESS_DB_HOST' IDENTIFIED BY '$MYSQL_PASSWORD';
GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'mariadb';
FLUSH PRIVILEGES;
"
mysqladmin -u root -p shutdown
mysqld