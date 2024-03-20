FROM debian:10
RUN apt-get update
RUN apt-get install -y mariadb-server mariadb-client
EXPOSE 3306
COPY tools/script.sh /usr/local/bin/
COPY tools/.env /usr/local/bin/
RUN chmod +x /usr/local/bin/script.sh
ENTRYPOINT ["script.sh"]
# ENV MYSQL_ROOT_PASSWORD=gghaya
# ENV MYSQL_DATABASE=db_gghaya
# ENV MYSQL_USER=gghaya
# ENV MYSQL_PASSWORD=gghaya
# COPY tools/script.sh /script.sh
# RUN chmod +x /script.sh && /script.sh
# CMD ["/script.sh"]
#--volume tools/mariadb-database-volume:/var/lib/mysql
#--volume $PWD:/etc/mysql/conf.d \
#--volume tools/mariadb-database-volume:/var/lib/mysql
#--volume $PWD:/etc/mysql/conf.d \
