#!/bin/bash

if [ ! -d "/var/www/public" ]; then
	mkdir -p /var/www/public
fi

if [ ! -d "/var/www/logs" ]; then	
	mkdir -p /var/www/logs
fi

service mysql start && /usr/sbin/apache2ctl -D FOREGROUND