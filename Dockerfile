FROM debian
MAINTAINER Alessandro Cappellozza <alessandro.cappellozza@gmail.com>
VOLUME ["/var/www/html", "/var/log"]

RUN echo  'mysql-server mysql-server/root_password password ampv'| debconf-set-selections
RUN	echo 'mysql-server mysql-server/root_password_again password ampv' | debconf-set-selections
RUN	apt-get update 
RUN apt-get install -y --force-yes apache2 wget mysql-server php5

EXPOSE 80 3306
