<?php
$file = '/mnt/Share/Menu_Update/Apps_Setup/php/iTunes_stop';
$newfile = '/mnt/dms';

copy($file, $newfile) ;

echo <<< END

<HTML>
<HEAD>
<TITLE>Gigabit SOHO NAS</TITLE>
<link rel="stylesheet" type="text/css" href="styles/default.css">
</HEAD>
<BODY text=#000000 bgColor=#ffffff>
<P><FONT class=style9>Stopping iTunes Server</FONT></P>
<br>
<table width="550" border="0" cellpadding="0" cellspacing="0">
<tr> 
<td width="100%" bgcolor="#FFFFFF">
<font size=3>&nbsp;&nbsp;iTumes Server (mt-daapd) will stop in 20 seconds.<br>&nbsp;&nbsp;Please wait up to be redirected.</font></td></tr>
<tr height="5"><td></td></tr>

</table>
</body></html>
<script language="javascript">
settime();
function settime(){setTimeout("reloadurl()",1);
return true;}
function reloadurl()
END;

$NASIP = shell_exec('hostname -i');
$NASIP2 = substr("$NASIP", 0, -2);
$ADMINPORT = shell_exec('cat /tmp/adminport');
$ADMINPORT2 = substr("$ADMINPORT", 12, -2);
$string = "{self.location.href=('http://" . $NASIP2 . ":8081" ."/exec_dlna.cgi?web_enable=1";
echo $string;

echo <<< END
');}</script><br></body></html>

END;

?>
