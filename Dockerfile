FROM ubuntu:18.04
RUN apt-get update && apt-get install -y \
	nginx \
        php7.2 \
	php7.2-fpm \
	php7.2-bcmath \
	php7.2-cli \
	php7.2-common \
	php7.2-curl \
	php7.2-imagick \
	php7.2-json \
	php7.2-mbstring \
	php7.2-mysql \
	php7.2-opcache \
	php7.2-readline \
	php7.2-xml \
	php7.2-zip 
RUN rm /var/www/html/index.nginx-debian.html
COPY index.php /var/www/html/
RUN rm /etc/nginx/sites-available/default
COPY default /etc/nginx/sites-available/
CMD service php7.2-fpm start && nginx -g "daemon off;"
