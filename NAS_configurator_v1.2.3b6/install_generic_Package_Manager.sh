#!/bin/sh


#################################################### Install Main Menu & common files 

cp /mnt/Share/Menu_Update/Main/images/Apps_Setup.gif /htdocs/images/
cp /mnt/Share/Menu_Update/Main/images/NAS_Setup.gif /htdocs/images/
cp /mnt/Share/Menu_Update/Main/images/img_backgr_top.jpg /htdocs/images

if [ -f /htdocs/index_old.htm ]; then
	echo "Already backed up "
	else
	cp /htdocs/index.htm /htdocs/index_old.htm    
fi

cp /mnt/Share/Menu_Update/index.sh /mnt
chmod 777 /mnt/index.sh
/bin/sh /mnt/index.sh >/htdocs/index.htm
rm /mnt/index.sh

mkdir -p /mnt/www/Menu_Update
mkdir -p /mnt/www/Menu_Update/images

#################################################### Install Applications Setup Menu

mkdir -p /mnt/www/Menu_Update/styles
mkdir -p /mnt/www/Menu_Update/php

cp /mnt/Share/Menu_Update/Apps_Setup/index_apps.sh /mnt
chmod 777 /mnt/index_apps.sh
/bin/sh /mnt/index_apps.sh >/htdocs/index_apps.htm
rm /mnt/index_apps.sh

cp /mnt/Share/Menu_Update/Apps_Setup/_side_apps.sh /mnt
chmod 777 /mnt/_side_apps.sh
/bin/sh /mnt/_side_apps.sh >/htdocs/_side_apps.htm
rm /mnt/_side_apps.sh

cp /mnt/Share/Menu_Update/Apps_Setup/_top_apps.sh /mnt
chmod 777 /mnt/_top_apps.sh
/bin/sh /mnt/_top_apps.sh >/htdocs/_top_apps.htm
rm /mnt/_top_apps.sh

cp /mnt/Share/Menu_Update/Apps_Setup/styles/* /mnt/www/Menu_Update/styles
cp /mnt/Share/Menu_Update/Apps_Setup/php/*.php /mnt/www/Menu_Update
cp /mnt/Share/Menu_Update/Apps_Setup/php/*.htm /mnt/www/Menu_Update
cp /mnt/Share/Menu_Update/Apps_Setup/images/* /mnt/www/Menu_Update/images
cp /mnt/Share/Menu_Update/Apps_Setup/php/transmission /tmp

chmod 777 /tmp/transmission
chmod 777 /tmp
touch /mnt/dms
chmod 777 /mnt/dms
chmod 777 /mnt/mldonkey/downloads.ini

#################################################### thttpdwithphp
#if [ -f /mnt/thttpdwithphp ]; then
#	echo "Already installed "
#	else
#	cp /mnt/Share/Menu_Update/thttpdwithphp /mnt/
#fi

#################################################### Install phpSysInfo
if [ -d /mnt/www/Menu_Update/phpsysinfo ]; then
	echo "Already installed "
	else
	tar zxvf /mnt/Share/Menu_Update/phpsysinfo.tgz -C /mnt/www/Menu_Update
fi

#################################################### Install Packager Manager Menu

cp /mnt/Share/Menu_Update/Package_Manager/_side_apps.sh /mnt
chmod 777 /mnt/_side_apps.sh
/bin/sh /mnt/_side_apps.sh >/htdocs/_side_apps.htm
rm /mnt/_side_apps.sh

cp /mnt/Share/Menu_Update/Package_Manager/images/* /mnt/www/Menu_Update/images
cp /mnt/Share/Menu_Update/Package_Manager/php/*.php /mnt/www/Menu_Update

echo "Menu Updated"

chmod 777 /mnt/Share/Menu_Update/Package_Manager/installed


# Set port for Menu Skin in 'httpd' and 'echo' 
/mnt/Share/Menu_Update/httpd -p 8081&
touch /tmp/adminport
echo "8081" >/tmp/adminport

