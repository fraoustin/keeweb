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
COPY ./src/index.html /usr/share/nginx/html/index.html.ini
COPY ./src/manifest.appcache /usr/share/nginx/html/manifest.appcache

ENV KEEWEB_LANG en
ENV KEEWEB_THEME fb
ENV KEEWEB_WEBDAV 0
ENV KEEWEB_DROPBOX 0
ENV KEEWEB_GDRIVE 0
ENV KEEWEB_ONEDRIVE 0
ENV KEEWEB_SKIPWARNING 1
ENV KEEWEB_OPENDEMO 0
ENV KEEWEB_CREATE 0
ENV KEEWEB_OPEN 0
ENV KEEWEB_IMPORTXML 0
ENV KEEWEB_SETTINGS 0
ENV KEEWEB_WEBDAVMETHOD default
ENV KEEWEB_WEBDAVURL
ENV KEEWEB_WEBDAVUSER
ENV KEEWEB_WEBDAVPASSWORD

EXPOSE 80

ENTRYPOINT ["/entrypoint.sh"]
CMD ["app"]


canOpenDemo:!0 -> canOpenDemo:!1
canCreate:!0 -> canCreate:!1
canOpen:!0 -> canOpen:!1
canImportXml:!0 -> canImportXml:!1
canOpenSettings:!0 -> canOpenSettings:!1
get("webdavSaveMethod")||"default" -> get("webdavSaveMethod")||"put"
title:"openUrl" -> title:"openUrl",value:"http://monserver/myfile"
title:"openUser" -> title:"openUser",value:"myuser"
title:"openPass" -> title:"openPass",value:"myuser"