# Docker Image for keeweb

Free cross-platform password manager compatible with KeePass. https://keeweb.info/

no TLS support, reverse proxy with TLS recommended

load when start image load file in

- /usr/share/gitweb/docker-entrypoint.pre
- /usr/share/gitweb/docker-entrypoint.post

## Parameter

- SET_CONTAINER_TIMEZONE (false or true) manage time of container
- CONTAINER_TIMEZONE timezone of container

## Port

- 80 

## Usage direct

run image fraoustin/keeweb

    docker run -d --name keeweb -p 80:80 fraoustin/webdav

you use http://localhost/ for access ihm


## External library

- keeweb https://github.com/keeweb/keeweb


