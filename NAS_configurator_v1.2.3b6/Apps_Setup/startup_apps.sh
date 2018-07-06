#!/bin/sh

APACHE=N
MYSQL=N
TELNETD=N
MLDONKEY=N
TRANSMISSION=
ITUNES=N
DMS=N
MEDIATOMB=N
MACOSX=N
NAS01G=N



#========================================================================================
# Start up script for NAS Configurator 
# Author: Giffy
# Forum: sohonas.freeforums.org
#
# It is recommended to NOT edit this file
# If you need to do do some changes, please, remember to change permisons to 777
# chmod 777 /Menu_Update/Apps_Setup/startup_apps.sh
#
#
# Based in Start up script in backdoor file for Firmware Extension AIO v.1.3 
# Firmware Extension AIO v.1.3 Author: Albert LEE 
#========================================================================================



# =========================================================  APACHE
echo "APACHE"
if [ "$APACHE" = "Y" ] && [ -f /mnt/apache/bin/apache ]; 
	then
	   echo "on & apache ok"
	   PORT=`grep ADMIN_PORT /etc/config | cut -d"'" -f2`
   	   [ "$PORT" -eq "80" ] && {
	   	killall httpd
	   	httpd -p 8080&
	   	sed -i /ADMIN_PORT/s/.*/ADMIN_PORT=\'8080\'/ /etc/config
	   	/etc/rc.d/save_config.sh
	   }
	   /mnt/apache/bin/apache
	   ln -sf /mnt/www /mnt/Share	   
	else
	   echo "on but not apache"
	   killall apache
	   PORT=`grep ADMIN_PORT /etc/config | cut -d"'" -f2`
	   [ "$PORT" -eq "80" ] && {
	   killall httpd
	   httpd -p 8080&
	   sed -i /ADMIN_PORT/s/.*/ADMIN_PORT=\'8080\'/ /etc/config
	   /etc/rc.d/save_config.sh
	   }
	   cp /mnt/Share/Menu_Update/thttpdwithphp /mnt
	   /mnt/thttpdwithphp -p 80 -d /mnt/www
	   ln -sf /mnt/www /mnt/Share    
fi

# MySQL Database
echo "MYSQL"
[ "$MYSQL" = "Y" ] && [ -d /mnt/mysql ] && {
   [ ! `grep mysql /etc/passwd` ] && echo "mysql:*:0:0:mysql:/mnt/Share:/bin/sh" >> /etc/passwd
   [ -f /mnt/mysql/scripts/mysql_install_db ] && {
      /mnt/mysql/scripts/mysql_install_db
      mv /mnt/mysql/scripts/mysql_install_db /mnt/mysql/scripts/mysql_install_db.bak
   }
   chmod 777 /tmp
   /mnt/mysql/bin/safe_mysqld &
   /mnt/mysql/bin/mysqladmin -u root password 'password'
   sleep 1
   }
[ "$MYSQL" = "N" ] && [ -d /mnt/mysql ] && {
   killall mysql
   }

# =========================================================  TELNETD

echo "TELNETD"
[ "$TELNETD" = "Y" ] && [ -f /mnt/telnetd ] && {
   echo "on"
   sed -i "/telnet/s/.*/telnet	stream	tcp	nowait	root	telnetd/" /etc/inetd.conf
   killall inetd
   inetd
   }
[ "$TELNETD" = "N" ] &&  {
   echo "off"
   
   }

# =========================================================  MLDONKEY
echo "MLDONKEY"
[ "$MLDONKEY" = "Y" ] && {
   echo "on"
   sed -i "/TORRENT_ENABLE/s/.*/TORRENT_ENABLE='1'/" /etc/config
   /bin/sh /mnt/Share/Menu_Update/Apps_Setup/php/mlnet_start
   }
[ "$MLDONKEY" = "N" ] &&  {
   echo "off"
   sed -i "/TORRENT_ENABLE/s/.*/TORRENT_ENABLE='0'/" /etc/config
   /bin/sh /mnt/Share/Menu_Update/Apps_Setup/php/mlnet_stop
   }

# =========================================================  Transmission 
echo "Transmission"

  [ -f /mnt/transmission-daemon ] && {
   mkdir /usr
   ln -sf /mnt/.local/share /usr
   }

[ "$TRANSMISSION" = Y ] && {
   echo "on"
   mkdir /usr
   ln -sf /mnt/.local/share /usr
   killall transmission-daemon
   killall transmission-daemon   
   /bin/sh /tmp/transmission
   }

[ "$TRANSMISSION" = N ] && {
   echo "off"
   killall transmission-daemon
   killall transmission-daemon
   }

# =========================================================  iTunes Server
echo "iTunes"
[ "$ITUNES" = Y ] && {
   echo "on"
   rm -f /mnt/mt-daapd/songs.gdb
   chmod +x /mnt/mt-daapd/mt-daapd
   rm /lib/libiconv.so.2
   rm /lib/libgdbm.so.3
   rm /lib/libid3tag.so.0
   ln -s /mnt/mt-daapd/libiconv.so.2.3.0 /lib/libiconv.so.2
   ln -s /mnt/mt-daapd/libgdbm.so.3.0.0 /lib/libgdbm.so.3
   ln -s /mnt/mt-daapd/libid3tag.so.0.3.0 /lib/libid3tag.so.0
   /mnt/mt-daapd/mt-daapd -c /mnt/mt-daapd/mt-daapd.conf
   }

[ "$ITUNES" = N ] && {
   echo "off"
   killall mt-daapd
   rm -f /mnt/mt-daapd/songs.gdb
   }


# =========================================================  DigitalMediaServer
echo "Digital Media Server"
[ "$DMS" = Y ] && {
   echo "on"
   rm /mnt/.dms.* 
   cp /mnt/libexpat.so.1 /lib/libexpat.so.1   
   chmod +x /mnt/DigitalMediaServer
   /mnt/DigitalMediaServer -f /etc/xml/dms.xml -r /mnt > chlog&
   }

[ "$DMS" = N ] && {
   echo "off"
   rm /mnt/.dms.* 
   /bin/sh /mnt/Share/Menu_Update/Apps_Setup/php/DMS_stop
   }


# =========================================================  MediaTomb 
echo "Mediatomb"
[ "$MEDIATOMB" = Y ] && [ -f /mnt/mediatomb ] && {
   echo "on"
   /bin/sh /mnt/Share/Menu_Update/Apps_Setup/php/mediatomb_start
   }

[ "$MEDIATOMB" = N ] && [ -f /mnt/mediatomb ] && {
   echo "off"
     /bin/sh /mnt/Share/Menu_Update/Apps_Setup/php/mediatomb_stop
   }

# =========================================================  MAKE COMPATIBLE WITH MAC
echo "MAC OSX file transfer fix"
[ "$MACOSX" = "Y" ] && {
   echo "on"
   sed -i "/max xmit/s/.*/   max xmit = 16644/" /etc/smb.conf
   }
[ "$MACOSX" = "N" ] && {
   echo "off"
   sed -i "/max xmit/s/.*/   max xmit = 65535/" /etc/smb.conf
   }


# =========================================================  NAS01G Menu Skin
echo "NAS01G Menu Skin"

[ "$NAS01G" = Y ] && {
    echo "on"
    cp /mnt/Share/Menu_Update/NAS01G_Setup/_side_nas.sh /mnt
    chmod 777 /mnt/_side_nas.sh
    /mnt/_side_nas.sh >/htdocs/_side_nas.htm
    rm /mnt/_side_nas.sh

    cp /mnt/Share/Menu_Update/NAS01G_Setup/_top_nas.sh /mnt
    chmod 777 /mnt/_top_nas.sh
    /bin/sh /mnt/_top_nas.sh >/htdocs/_top_nas.htm
    rm /mnt/_top_nas.sh

    cp /mnt/Share/Menu_Update/NAS01G_Setup/index_nas.htm /htdocs/index_nas.htm

    cp /mnt/Share/Menu_Update/NAS01G_Setup/images/* /mnt/www/Menu_Update/images
    }

[ "$NAS01G" = N ] && {
    echo "off"
    cp /htdocs/index_old.htm /htdocs/index_nas.htm    
    }
    