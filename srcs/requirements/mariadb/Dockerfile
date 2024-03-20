FROM debian:10
RUN apt-get update
RUN apt-get install -y mariadb-server mariadb-client && \
    rm -rf /var/lib/apt/lists/*
EXPOSE 3306

CMD ["mysqld"]
#--volume mariadb-database-volume:/var/lib/mysql
#--volume $PWD:/etc/mysql/conf.d \
