# Docker Image for keeweb

Free cross-platform password manager compatible with KeePass. https://keeweb.info/

no TLS support, reverse proxy with TLS recommended

load when start image load file in

- /usr/share/gitweb/docker-entrypoint.pre
- /usr/share/gitweb/docker-entrypoint.post

## Parameter

- SET_CONTAINER_TIMEZONE (false or true) manage time of container
- CONTAINER_TIMEZONE timezone of container

- KEEWEB_TITLE title of page, default KeepWeb
- KEEWEB_LANG language of keeweb, default English (English/de-DE/fr-FR)
- KEEWEB_THEME theme, default fb (fb/db/sd/sl/wh/te/hc)
- KEEWEB_WEBDAV support webdav, default 0 (0/1)
- KEEWEB_DROPBOX support dropbox, default 0 (0/1)
- KEEWEB_GDRIVE support google drive, default 0 (0/1)
- KEEWEB_ONEDRIVE support onedrive, default 0 (0/1)
- KEEWEB_SKIPWARNING enable skip https warning, default 1 (0/1)
- KEEWEB_OPENDEMO add button open demo, default 0 (0/1)
- KEEWEB_CREATE add button create, default 0 (0/1)
- KEEWEB_OPEN add button open, default 0 (0/1)
- KEEWEB_IMPORTXML add button import xml, default 0 (0/1)
- KEEWEB_SETTINGS add button setting, default 0 (0/1)
- KEEWEB_WEBDAVMETHOD type of save on webdav, default default (default/put)
- KEEWEB_WEBDAVURL value of url webdav, default 'http://'
- KEEWEB_WEBDAVUSER value of user webdav, default 'youruser'
- KEEWEB_WEBDAVPASSWORD value of user webdav, for enabled webdav server

## Volume

- /share if enabled webdav server

## Port

- 80 

## Usage direct

run image fraoustin/keeweb

    docker run -d --name keeweb -p 80:80 fraoustin/webdav

you use http://localhost/ for access ihm


## External library

- keeweb https://github.com/keeweb/keeweb


