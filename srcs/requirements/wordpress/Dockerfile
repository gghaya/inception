FROM debian:10
RUN apt-get update
RUN apt-get install php-cgi php-common php-fpm mariadb-client php-pear php-mbstring php-zip php-net-socket php-gd php-xml-util php-gettext php-mysql php-bcmath tar wget unzip wget git -y
RUN wget https://wordpress.org/latest.tar.gz -O wordpress.tar.gz && \
    mkdir wordpress && \
    tar -xzf wordpress.tar.gz -C wordpress --strip-components=1 && \
    rm wordpress.tar.gz
COPY tools/.env /usr/local/bin/
COPY tools/script.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/script.sh
RUN wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
RUN chmod +x wp-cli.phar
RUN mv wp-cli.phar /usr/local/
ENTRYPOINT ["script.sh"]