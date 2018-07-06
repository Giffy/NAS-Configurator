<?php

$path = $_POST['path'];
$settings = $_POST['settings'];
$allowedIP = $_POST['allowedIP'];
$download_folder = $_POST['download_folder'];
$password_enable = $_POST['password_enable'];
$user = $_POST['user'];
$password = $_POST['password'];

$fp = fopen("/tmp/transmission", "w+t");
$savestring = "killall transmission-daemon" . "\n";
fwrite($fp, $savestring);
fclose($fp);

$fp = fopen("/tmp/transmission", "a+t");
$savestring = "sleep 10" . "\n";
fwrite($fp, $savestring);
fclose($fp);

$fp = fopen("/tmp/transmission", "a+t");
$savestring = $path ."/transmission-daemon -g " . $settings . " -w " . $download_folder . " " . $password_enable . " -u " . $user . " -v " . $password . " -a '" . $allowedIP . "'\n";
fwrite($fp, $savestring);
fclose($fp);


$file = '/tmp/transmission';
$newfile = '/mnt/dms';

copy($file, $newfile) ;

echo <<< END

<HTML>
<HEAD>
<TITLE>Gigabit SOHO NAS</TITLE>
<link rel="stylesheet" type="text/css" href="styles/default.css">
</HEAD>
<BODY text=#000000 bgColor=#ffffff>
<P><FONT class=style9>Starting Transmission with new settings</FONT></P>
<br>
<table width="550" border="0" cellpadding="0" cellspacing="0">
<tr> 
<td width="100%" bgcolor="#FFFFFF">
<font size=3>&nbsp;&nbsp;Transmission will start in 25 seconds.<br>&nbsp;&nbsp;Please wait up to be redirected.</font></td></tr>
<tr height="5"><td></td></tr>

</table>
</body></html>
<script language="javascript">
settime();
function settime()
END;

$NASIP = shell_exec('hostname -i');
$NASIP2 = substr("$NASIP", 0, -2);
$ADMINPORT = shell_exec('cat /tmp/adminport');
$ADMINPORT2 = substr("$ADMINPORT", 12, -2);
$string = "{self.location.href=('http://" . $NASIP2 . ":8081/exec_dlna.cgi?web_enable=1";
echo $string;

echo <<< END
');}</script><br></body></html>

END;

?>