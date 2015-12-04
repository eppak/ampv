FROM debian
MAINTAINER Alessandro Cappellozza
VOLUME ["/var/www/html", "/var/log"]
RUN apt-get update && apt-get install -y --force-yes apache2 wget
EXPOSE 80 3306
