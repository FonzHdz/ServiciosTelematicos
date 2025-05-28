FROM ubuntu:22.04

RUN apt update && apt install -y apache2 openssl libxml2-dev curl && \
    a2enmod ssl proxy proxy_http headers && \
    mkdir -p /etc/apache2/certs

ARG APACHE_CONF=apache-prod.conf

COPY ${APACHE_CONF} /etc/apache2/sites-available/000-default.conf
COPY certs/apache.crt /etc/apache2/certs/apache.crt
COPY certs/apache.key /etc/apache2/certs/apache.key

EXPOSE 80 443

CMD ["apache2ctl", "-D", "FOREGROUND"]
