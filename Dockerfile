FROM nginx:1.13
MAINTAINER Wessel Pieterse <wessel<at>ordercloud<dot>co<dot>za>

RUN echo "daemon off;" >> /etc/nginx/nginx.conf
ADD default /etc/nginx/sites-available/default

RUN chown www /etc/nginx/nginx.conf