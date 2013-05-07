#!/bin/bash
#	ftp usn oakleyandamy
#		psd O@kl3yp@ss


FTP_SITE='ftp.amyandoakley.com'
USER='amyandoakley'
PASSWD='O@kl3yp@ss'

echo "connecting to FTP_SITE..."
ftp -inv $FTP_SITE <<EOF
user $USER $PASSWD
mput *.js *.css *.html *.jpg
bye 
EOF  