#!/bin/bash
rm /usr/share/nginx/html/index.html
cp /usr/share/nginx/html/index.html.ini /usr/share/nginx/html/index.html

sed -i 's/KEEWEB_LANG/'$KEEWEB_LANG'/g' /usr/share/nginx/html/index.html
sed -i 's/KEEWEB_THEME/'$KEEWEB_THEME'/g' /usr/share/nginx/html/index.html
sed -i 's/KEEWEB_WEBDAV/'$KEEWEB_WEBDAV'/g' /usr/share/nginx/html/index.html
sed -i 's/KEEWEB_DROPBOX/'$KEEWEB_DROPBOX'/g' /usr/share/nginx/html/index.html
sed -i 's/KEEWEB_GDRIVE/'$KEEWEB_GDRIVE'/g' /usr/share/nginx/html/index.html
sed -i 's/KEEWEB_ONEDRIVE/'$KEEWEB_ONEDRIVE'/g' /usr/share/nginx/html/index.html
sed -i 's/KEEWEB_SKIPWARNING/'$KEEWEB_SKIPWARNING'/g' /usr/share/nginx/html/index.html
sed -i 's/KEEWEB_OPENDEMO/'$KEEWEB_OPENDEMO'/g' /usr/share/nginx/html/index.html
sed -i 's/KEEWEB_CREATE/'$KEEWEB_CREATE'/g' /usr/share/nginx/html/index.html
sed -i 's/KEEWEB_OPEN/'$KEEWEB_OPEN'/g' /usr/share/nginx/html/index.html
sed -i 's/KEEWEB_IMPORTXML/'$KEEWEB_IMPORTXML'/g' /usr/share/nginx/html/index.html
sed -i 's/KEEWEB_SETTINGS/'$KEEWEB_SETTINGS'/g' /usr/share/nginx/html/index.html
sed -i 's/KEEWEB_WEBDAVMETHOD/'$KEEWEB_WEBDAVMETHOD'/g' /usr/share/nginx/html/index.html
sed -i 's|KEEWEB_WEBDAVURL|'$KEEWEB_WEBDAVURL'|g' /usr/share/nginx/html/index.html
sed -i 's/KEEWEB_WEBDAVUSER/'$KEEWEB_WEBDAVUSER'/g' /usr/share/nginx/html/index.html
