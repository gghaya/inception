FROM debian:10
RUN apt-get update -y
RUN apt-get install -y mariadb-server 
EXPOSE 3306
COPY tools/script.sh /usr/local/bin/
# COPY tools/.env /usr/local/bin/
RUN chmod +x /usr/local/bin/script.sh
RUN mkdir -p /var/run/mysqld && chown mysql:mysql /var/run/mysqld
RUN chown -R mysql:mysql /var/lib/mysql
ENTRYPOINT ["script.sh"]
