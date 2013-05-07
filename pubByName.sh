#!/bin/bash


FTP_SITE='ftp.nyshkickball.com'
USER='nyshkickballcom'
PASSWD='sh0w3rh@mm3rs'

if [ $# -ne 1 ]
then
	echo "file to publish as arg"
	exit 2
fi

echo "connecting to FTP_SITE..."
ftp -inv $FTP_SITE <<EOF
user $USER $PASSWD
put $1
bye 
EOF  

