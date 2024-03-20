FROM debian:10
RUN apt-get update && apt-get install -y nginx
# RUN rm /etc/nginx/conf.d/default.conf
# RUN rm -rf /etc/nginx/nginx.conf/*.conf
# COPY conf/default.conf /etc/nginx/conf.d/
COPY conf/default.conf /etc/nginx/sites-enabled/
# COPY conf/default.conf /etc/nginx/sites-available/wordpress.conf
COPY tools/ssl/nginx.crt /etc/nginx/ssl/nginx.crt
COPY tools/ssl/nginx.key /etc/nginx/ssl/nginx.key
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]