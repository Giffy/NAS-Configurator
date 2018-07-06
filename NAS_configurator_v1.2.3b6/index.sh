#!/bin/sh

/bin/cat << EOM

<html>
<head>
<title>Gigabit SOHO NAS</title>
<style type="text/css">

</style>
</head>

<body background=images/img_backgr_top.jpg>
<br>
<center><h1>Welcome to NAS configurator v1.2.3</h1>
<table width="550" border="0" cellpadding="80" cellspacing="30" bordercolor="#CCCCDD" border=0>
<tr>
<td align=center border=0 height=90>
<a href="index_nas.htm" >
<img src=images/NAS_Setup.gif border=0><br>
<!-- Setup icon created by Alezander Moore and distributed with GPL -->
<h2>NAS setup</h2>
</a>
</td>
<td align=center>
<a 
EOM

echo "href='http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":8081/index_apps.htm'" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 
>
<img src=images/Apps_Setup.gif border=0><br>
<!-- Applications icon created by Asher and distributed Free for personal use -->
<h2>Applications setup</h2>
</a>
</td>
</tr>
</table>

</body>
</html>