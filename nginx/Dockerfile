FROM nginx:1.16

ADD ./nginx.conf /etc/nginx/nginx.conf
ADD ./site.conf /etc/nginx/conf.d/default.conf
RUN mkdir -p /var/www/html

WORKDIR /var/www/html