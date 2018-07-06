#!/bin/sh

/bin/cat << EOM
<html>
<head>
<title>Gigabit SOHO NAS</title>
<style type="text/css">

</style>
</head>

<frameset framespacing="0" border="0" rows="70,*" frameborder="0">
	<frame name="topFrame" scrolling="no" noresize target="contents" src="_top_apps.htm" marginwidth="0" marginheight="0">
	<frameset cols="272,*">
	
	 
		<frame name="mainFrame" target="main" src="_side_apps.htm" scrolling="auto" noresize marginwidth="0" marginheight="0">
		<frame name="rightFrame" src=

EOM
echo "http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/_switchservices.php" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 
		
		 marginwidth="20" marginheight="0" scrolling="auto">
		
</frameset>

	<noframes>
	<body>
		<p>Gigabit SOHO NAS Configuration.<br><br>
	    </p>
	</body>
	</noframes>
</frameset>

</html>


