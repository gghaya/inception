FROM debian:10
RUN apt-get update && apt-get install -y nginx
COPY tools/ssl/nginx.crt /etc/nginx/ssl/nginx.crt
COPY tools/ssl/nginx.key /etc/nginx/ssl/nginx.key
RUN chmod 755 /var/www/html
RUN chown -R www-data:www-data /var/www/html 
COPY conf/default /etc/nginx/nginx.conf
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]