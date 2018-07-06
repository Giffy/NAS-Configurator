#!/bin/sh

/bin/cat << EOM

<HTML><HEAD><TITLE>Gigabit SOHO NAS</TITLE>
<link rel="stylesheet" type="text/css" href="styles/default.css">

</HEAD>
<BODY onLoad="return updateStatus()" 

EOM

echo "background=http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img_backgr_top.jpg" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 
>
<TABLE cellSpacing=0 cellPadding=0 border=0 width=860> 
<!-- shutdown -->
 	
 	<TD width=800></TD>
	<TD width=60>
	
<!-- shutdown -->
 	
    <form name="shutdown" action="Set_shutdown.cgi" method=get>
	<INPUT type="submit" value="Shutdown" name=shut_down>
    </form>	
<!-- restart -->	
    <form action="Restart_System.cgi" method=get target="rightFrame">
  	<input type="hidden" name="page" value="restart">
        <input type="submit" value="Restart">
    </form>
	
 	
	</TD>
	
</TABLE>
</BODY>
</HTML>

