FROM php:7.0-alpine
RUN apk add --no-cache patch
RUN pear install PHP_CodeSniffer
RUN apk update && apk upgrade && apk add --no-cache bash git openssh
RUN git clone https://github.com/magento-ecg/coding-standard /root/
RUN mv /root/Ecg/ /usr/local/lib/php/PHP/CodeSniffer/Standards/
RUN phpcs --config-set default_standard Ecg