FROM debian
MAINTAINER Alessandro Cappellozza <alessandro.cappellozza@gmail.com>
VOLUME ["/var/www/"]
EXPOSE 80 3306

RUN echo 'mysql-server mysql-server/root_password password ampv'| debconf-set-selections
RUN echo 'mysql-server mysql-server/root_password_again password ampv' | debconf-set-selections
RUN apt-get update 
RUN apt-get install -y --force-yes apache2 wget mysql-server php5 php5-mysql curl
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=bin --filename=composer
RUN a2enmod rewrite
ADD files/000-default.conf /etc/apache2/sites-enabled/000-default.conf
ADD files/run.sh /run.sh

CMD ["/bin/bash", "run.sh"]