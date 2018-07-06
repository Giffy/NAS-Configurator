<?php


$apache_start = "APACHE=" . $_POST['apache_start'];
$mysql_start = "MYSQL=" . $_POST['mysql_start'];
$telnet_start = "TELNETD=" . $_POST['telnet_start'];
$mlnet_start = "MLDONKEY=" . $_POST['mlnet_start'];
$trans_start = "TRANSMISSION=" . $_POST['trans_start'];
$itunes_start = "ITUNES=" . $_POST['itunes_start'];
$dlna_start = "DMS=" . $_POST['dlna_start'];
$media_start = "MEDIATOMB=" . $_POST['media_start'];
$macosx = "MACOSX=" . $_POST['macosx'];
$nas01g = "NAS01G=" . $_POST['nas01g'];

$file = '/mnt/Share/Menu_Update/Apps_Setup/startup_apps.sh';
$contents = file('/mnt/Share/Menu_Update/Apps_Setup/startup_apps.sh');

$fp = fopen( $file ,"w+");

$contents[2] = $apache_start . "\n";
$contents[3] = $mysql_start . "\n";
$contents[4] = $telnet_start . "\n";
$contents[5] = $mlnet_start . "\n";
$contents[6] = $trans_start . "\n";
$contents[7] = $itunes_start . "\n";
$contents[8] = $dlna_start . "\n";
$contents[9] = $media_start . "\n";
$contents[10] = $macosx . "\n";
$contents[11] = $nas01g . "\n";


foreach($contents as $key => $value){
fwrite($fp,$value);
}

echo <<< END

<HTML>
<HEAD>
<TITLE>Gigabit SOHO NAS</TITLE>
<link rel="stylesheet" type="text/css" href="styles/default.css">
</HEAD>
<BODY text=#000000 bgColor=#ffffff>
<P><FONT class=style9>&nbsp;&nbsp;Updated Start up file</FONT></P>
<br>
<table width="550" border="0" cellpadding="0" cellspacing="0">
<tr> 
<td width="100%" bgcolor="#FFFFFF">
<font size=3>&nbsp;&nbsp;Please wait up to be redirected.</font></td></tr>
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
$string = "{self.location.href=('http://" . $NASIP2 . "/Menu_Update/_switchservices.php";
echo $string;

echo <<< END
');}</script><br></body></html>

END;


?>