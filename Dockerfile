FROM diksy/apache2-php7:1.1
MAINTAINER Arif Fajar Irawan <kiplink@unej.ac.id>

RUN apt update
RUN apt upgrade -yqq
RUN a2enmod rewrite
RUN apt-get install -yqq libmcrypt-dev
RUN apt-get install -yqq libxml2-dev
RUN apt-get install -y php-mcrypt
RUN apt-get install -y php-mbstring
RUN apt-get install -y php-gd
RUN apt-get install -y php-curl
RUN apt-get install -y php-xml

VOLUME ["/var/www/","/etc/apache2/sites-available/"]
EXPOSE 80
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
