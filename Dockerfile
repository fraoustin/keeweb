FROM nginx:1.13
LABEL maintainer "fraoustin@gmail.com"

ENV SET_CONTAINER_TIMEZONE false 
ENV CONTAINER_TIMEZONE "" 

# manage user www-data
RUN usermod -u 1000 www-data

# manage start container
COPY ./src/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN mkdir /usr/share/docker-entrypoint.pre
RUN mkdir /usr/share/docker-entrypoint.post
COPY ./src/00_init.sh /usr/share/docker-entrypoint.pre/00_init.sh
RUN chmod +x -R /usr/share/docker-entrypoint.pre

# install extra nginx
RUN apt-get update && apt-get install -y \
        apache2-utils \
        git \
        nginx-extras \
    && rm -rf /var/lib/apt/lists/* 

COPY ./src/default.conf /etc/nginx/conf.d/default.conf
RUN rm /etc/nginx/sites-enabled/default

COPY ./src/index.html /usr/share/nginx/html/index.html
COPY ./src/manifest.appcache /usr/share/nginx/html/manifest.appcache

EXPOSE 80

ENTRYPOINT ["/entrypoint.sh"]
CMD ["app"]
