<?php

$path = $_POST['path'];
$settings = $_POST['settings'];
$allowedIP = $_POST['allowedIP'];
$download_folder = $_POST['download_folder'];
$password_enable = $_POST['password_enable'];
$user = $_POST['user'];
$password = $_POST['password'];
$max_download = $_POST['max_bt'];
$min_upload = $_POST['min_bt'];

$file = $settings;
$contents = file($settings);

$fp = fopen( $settings ,"w+");

$contents[31] = "  \"" . $allowedIP . "\";]" . "\n";
$contents[75] = " max_hard_upload_rate = " . $min_upload . "\n";
$contents[83] = " max_hard_download_rate = " . $max_download . "\n";
$contents[241] = " http_proxy_port = 8085" . "\n"; 


foreach($contents as $key => $value){
fwrite($fp,$value);
}

$file = '/mnt/Share/Menu_Update/Apps_Setup/php/mlnet_start';
$newfile = '/mnt/dms';

copy($file, $newfile) ;

echo <<< END

<HTML>
<HEAD>
<TITLE>Gigabit SOHO NAS</TITLE>
<link rel="stylesheet" type="text/css" href="styles/default.css">
</HEAD>
<BODY text=#000000 bgColor=#ffffff>
<P><FONT class=style9>Starting MLDonkey with new settings</FONT></P>
<br>
<table width="550" border="0" cellpadding="0" cellspacing="0">
<tr> 
<td width="100%" bgcolor="#FFFFFF">
<font size=3>&nbsp;&nbsp;MLDonkey will start in 25 seconds.<br>&nbsp;&nbsp;Please wait up to be redirected.</font></td></tr>
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