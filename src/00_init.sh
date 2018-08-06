#!/bin/bash
rm /usr/share/nginx/html/index.html
cp /usr/share/nginx/html/index.html.ini /usr/share/nginx/html/index.html

sed -i 's/"locale","en"/"locale","'$KEEWEB_LANG'"/g' /usr/share/nginx/html/index.html
sed -i 's/"theme","fb"/"theme","'$KEEWEB_THEME'"/g' /usr/share/nginx/html/index.html
sed -i 's/webdav:!0/webdav:!'$KEEWEB_WEBDAV'/g' /usr/share/nginx/html/index.html
sed -i 's/dropbox:!0/dropbox:!'$KEEWEB_DROPBOX'/g' /usr/share/nginx/html/index.html
sed -i 's/gdrive:!0/gdrive:!'$KEEWEB_GDRIVE'/g' /usr/share/nginx/html/index.html
sed -i 's/onedrive:!0/onedrive:!'$KEEWEB_ONEDRIVE'/g' /usr/share/nginx/html/index.html
sed -i 's/skipHttpsWarning:!1/skipHttpsWarning:!'$KEEWEB_SKIPWARNING'/g' /usr/share/nginx/html/index.html
sed -i 's/canOpenDemo:!0/canOpenDemo:!'$KEEWEB_OPENDEMO'/g' /usr/share/nginx/html/index.html
sed -i 's/canCreate:!0/canCreate:!'$KEEWEB_CREATE'/g' /usr/share/nginx/html/index.html
sed -i 's/canOpen:!0/canOpen:!'$KEEWEB_OPEN'/g' /usr/share/nginx/html/index.html
sed -i 's/canImportXml:!0/canImportXml:!'$KEEWEB_IMPORTXML'/g' /usr/share/nginx/html/index.html
sed -i 's/canOpenSettings:!0/canOpenSettings:!'$KEEWEB_SETTINGS'/g' /usr/share/nginx/html/index.html
sed -i 's/get("webdavSaveMethod")||"default"/get("webdavSaveMethod")||"'$KEEWEB_WEBDAVMETHOD'"/g' /usr/share/nginx/html/index.html
sed -i 's/title:"openUrl"/title:"openUrl",value:"'$KEEWEB_WEBDAVURL'"/g' /usr/share/nginx/html/index.html
sed -i 's/title:"openUser"/title:"openUser",value:"'$KEEWEB_WEBDAVUSER'"/g' /usr/share/nginx/html/index.html
