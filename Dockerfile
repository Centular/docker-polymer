FROM nginx:1.13
MAINTAINER Wessel Pieterse <wessel<at>ordercloud<dot>co<dot>za>

COPY default.conf /etc/nginx/nginx.conf

RUN chown www /etc/nginx/nginx.conf