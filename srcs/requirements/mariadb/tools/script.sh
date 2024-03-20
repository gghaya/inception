#!/bin/bash
mysqld_safe &
pid="$!"
source /usr/local/bin/.env
# Wait a little for MariaDB to start
sleep 10

# Perform initial setup
mysql -u root -p"$MYSQL_ROOT_PASSWORD" -e "
CREATE DATABASE IF NOT EXISTS $MYSQL_DATABASE;
CREATE USER '$MYSQL_USER'@'%' IDENTIFIED BY '$MYSQL_PASSWORD';
GRANT ALL PRIVILEGES ON $MYSQL_DATABASE.* TO '$MYSQL_USER'@'%';
FLUSH PRIVILEGES;
"
wait "$pid"
