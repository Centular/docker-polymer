FROM nginx:1.13
MAINTAINER Wessel Pieterse <wessel<at>ordercloud<dot>co<dot>za>

COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./default.conf /etc/nginx/conf.d/default.conf

RUN touch /var/run/nginx.pid && \
  chown -R www-data:www-data /var/run/nginx.pid && \
  chown -R www-data:www-data /var/cache/nginx

USER www-data
