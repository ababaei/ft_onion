FROM debian:bullseye

RUN apt-get update && apt-get install -y \
    nginx \
    openssh-server \
    tor \
    sudo

RUN mkdir -p /var/www/html && \
    chmod -R 755 /var/www/html && \
    chown -R www-data:www-data /var/www/html

COPY index.html /var/www/html/index.html
COPY nginx.conf /etc/nginx/nginx.conf
COPY torrc /etc/tor/torrc
COPY sshd_config /etc/ssh/sshd_config

RUN mkdir -p /var/run/sshd

RUN useradd -m -s /bin/bash ababaei && \
    echo "ababaei:123456" | chpasswd && \
    usermod -aG sudo ababaei 

COPY entrypoint.sh /entrypoint.sh

EXPOSE 4242 80

ENTRYPOINT ["/entrypoint.sh"]