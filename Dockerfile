FROM ubuntu:18.04
RUN apt-get update && apt-get install -y \
	nginx \
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
CMD [ "/etc/init.d/nginx" "start" ]