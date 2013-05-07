#!/bin/bash
#mput mx_4.5.1.21328.swf sparkskins_4.5.1.21328.swf crossdomain.xml	nysh_site.html framework_4.5.1.21328.swf nysh_site.swf swfobject.js playerProductInstall.swf textLayout_2.0.0.232.swf index.html rpc_4.5.1.21328.swf vbkoPics.xml spark_4.5.1.21328.swf


FTP_SITE='ftp.nyshkickball.com'
USER='nyshkickballcom'
PASSWD='sh0w3rh@mm3rs'
BIN='bin-debug'


echo "copying nysh_site.html to index.html"
cp bin-debug/nysh_site.html bin-debug/index.html

echo "copying xml files to bin-debug"
cp -rp src/*.xml bin-debug

cd $BIN

#1. Uses the ftp command with the -inv switches.  -i turns off interactive prompting. -n Restrains FTP from attempting the auto-login feature. -v enables verbose and progress.  
echo "connecting to FTP_SITE..."
ftp -inv $FTP_SITE <<EOF
user $USER $PASSWD
mput *.swf *.xml *.html
bye 
EOF  