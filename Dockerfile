FROM nginx:stable

RUN apt-get update -qq && \
	apt-get install -qq -y nginx-extras && \
	apt-get clean -qq

ADD nginx.conf /etc/nginx/nginx.conf
ADD .htpasswd /etc/nginx/.htpasswd
ADD entrypoint.sh /entrypoint.sh

# admin:admin
ENV HTPASSWD='admin:$apr1$1LqDxPYe$bfT20Jzj5t.x85KCcm/ac.'

# upload size limit
ENV BODY_SIZE='16M'

# WebDAV path confg (absolute, without the end path separate)
ENV DAV_PATH='/dav'

# CORS
ENV CORS='none'

EXPOSE 80

VOLUME /var/www

ENTRYPOINT ["/entrypoint.sh"]

CMD ["nginx", "-g", "daemon off;"]
