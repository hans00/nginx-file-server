#!/bin/sh

envsubst < /etc/nginx/.htpasswd > /etc/nginx/.htpasswd
envsubst < /etc/nginx/nginx.conf > /etc/nginx/nginx.conf

chown -R nginx:nginx /var/www

exec "$@"
