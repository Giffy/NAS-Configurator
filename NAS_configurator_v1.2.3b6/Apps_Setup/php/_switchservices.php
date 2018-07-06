<?php

$NASIP = shell_exec('hostname -i');
$NASIP2 = substr("$NASIP", 0, -2);
$ADMINPORT = shell_exec('cat /tmp/adminport');
$ADMINPORT2 = substr("$ADMINPORT", 12, -2);

echo <<< END
<html><head><title>Gigabit SOHO NAS</title>
<link rel="stylesheet" type="text/css" href="styles/default.css">
<meta http-equiv="refresh" content="15">
</head>
<body bgcolor="#FFFFFF" text="#000000">
<p><font class="style9">&nbsp;&nbsp;Services Setup</font></p>

<br>
<table width="570" border="1" cellpadding="0" cellspacing="0" bordercolor="#CCCCDD">
<form name="web_form" id="web_form" method="post" action="startupform.php">

	<tr bgcolor=#333399>
		<td class="style2" align=center>Services</td>
		<td class="style2" align=center>Current Status</td>
		<td class="style2" align=center>Switch service</td>
		<td class="style2" align=center>Start up after shutdown</td>
		<td class="style2" align=center>WebUI</td>
	</TR>
<!-- ---------------------------------------------------------------------------------------- APACHE -->

	<tr><td width="135" bgcolor=#DDDDDD align=left height="31"><b>&nbsp;&nbsp;
Apache </b></td>
	<TD width="80"><center>
END;
	$apach_status = shell_exec('ps -aux|grep apache | grep -v grep | if grep -c apache >/dev/null; then echo "<font color=#008000><b>running</b></font>" ; else echo "<font color="red"><b>stopped</b></font>"; fi');
	echo "$apach_status";
echo <<< END
	</center></TD>
	<TD width="120" align=center><b> n/a </b></td>
	<td>&nbsp; &nbsp; 
	<input type="radio" name="apache_start"  value="Y"
END;

$contents = file('/mnt/Share/Menu_Update/Apps_Setup/startup_apps.sh');
$name1 = rtrim($contents[2]);
	if ($name1=="APACHE=Y") {
  echo " checked";
  echo " ";
}
echo <<< END

	>Yes&nbsp;&nbsp;&nbsp;&nbsp;
  	<input type="radio" name="apache_start"  value="N"
END;

$contents = file('/mnt/Share/Menu_Update/Apps_Setup/startup_apps.sh');
$name1 = rtrim($contents[2]);
	if ($name1=="APACHE=N") {
  echo "checked";
  echo " ";
}
echo <<< END
	>No</td>
	<TD align=center><b> n/a </b></td>
</TR>

<!-- ---------------------------------------------------------------------------------------- MYSQL -->

	<tr><td bgcolor=#DDDDDD align=left height="31" ><b>&nbsp;&nbsp;
MySQL </b></td>
	<TD align=center>
END;
	$mysql_status = shell_exec('ps -aux|grep mysqld | grep -v grep | if grep -c mysql >/dev/null; then echo "<font color=#008000><b>running</b></font>" ; else echo "<font color="red"><b>stopped</b></font>"; fi');
	echo "$mysql_status";
echo <<< END
	</TD>
	<TD align=center>
		<INPUT TYPE=BUTTON VALUE="run" onClick="location.href='mysql_start.php'">
		&nbsp;
		<INPUT TYPE=BUTTON VALUE="stop" onClick="location.href='mysql_stop.php'">
	</TD>
	<td>&nbsp; &nbsp; 
	<input type="radio" name="mysql_start"  value="Y"
END;

$contents = file('/mnt/Share/Menu_Update/Apps_Setup/startup_apps.sh');
$name1 = rtrim($contents[3]);
	if ($name1=="MYSQL=Y") {
  echo " checked";
  echo " ";
}
echo <<< END

	>Yes&nbsp;&nbsp;&nbsp;&nbsp;
  	<input type="radio" name="mysql_start"  value="N"
END;

$contents = file('/mnt/Share/Menu_Update/Apps_Setup/startup_apps.sh');
$name1 = rtrim($contents[3]);
	if ($name1=="MYSQL=N") {
  echo "checked";
  echo " ";
}
echo <<< END
	>No</td>
	<TD align=center><b> n/a </b></td>
</TR>
<!-- ---------------------------------------------------------------------------------------- TELNET -->
	
	<tr><td bgcolor=#DDDDDD align=left height="31" ><b>&nbsp;&nbsp;
Telnet </b></td>
	<TD align=center>
END;
	$telne_status = shell_exec('ps -aux|grep telnetd | grep -v grep | if grep -c telnetd >/dev/null; then echo "<font color=#008000><b>running</b></font>" ; else echo "<font color="red"><b>stopped</b></font>"; fi');
	echo "$telne_status";
echo <<< END
	</TD>
	<TD align=center><b> n/a </b></td>
	<td>&nbsp; &nbsp; 
	<input type="radio" name="telnet_start"  value="Y"
END;

$contents = file('/mnt/Share/Menu_Update/Apps_Setup/startup_apps.sh');
$name1 = rtrim($contents[4]);
	if ($name1=="TELNETD=Y") {
  echo " checked";
  echo " ";
}
echo <<< END
	>Yes&nbsp;&nbsp;&nbsp;&nbsp;
  	<input type="radio" name="telnet_start"  value="N"
END;

$contents = file('/mnt/Share/Menu_Update/Apps_Setup/startup_apps.sh');
$name1 = rtrim($contents[4]);
	if ($name1=="TELNETD=N") {
  echo " checked";
  echo " ";
}
echo <<< END
	>No</td>
	<TD align=center><b> n/a </b></td>
</TR>
<!-- ---------------------------------------------------------------------------------------- MLDONKEY -->

	<tr><td bgcolor=#DDDDDD align=left height="31" ><b>&nbsp;&nbsp;
MLDonkey </b></td>
	<TD align=center>
END;
	$mlnet_status = shell_exec('ps -aux|grep mlnet | grep -v grep | if grep -c mlnet >/dev/null; then echo "<font color=#008000><b>running</b></font>" ; else echo "<font color="red"><b>stopped</b></font>"; fi');
	echo "$mlnet_status";
echo <<< END
	</TD>
	<TD align=center>
		<INPUT TYPE=BUTTON VALUE="run" onClick="location.href='mlnet_start.php'">
		&nbsp;
		<INPUT TYPE=BUTTON VALUE="stop" onClick="location.href='mlnet_stop.php'">
	</TD>
	<td>&nbsp; &nbsp; 
	<input type="radio" name="mlnet_start"  value="Y"
END;

$contents = file('/mnt/Share/Menu_Update/Apps_Setup/startup_apps.sh');
$name1 = rtrim($contents[5]);
	if ($name1=="MLDONKEY=Y") {
  echo " checked";
  echo " ";
}
echo <<< END
	>Yes&nbsp;&nbsp;&nbsp;&nbsp;
  	<input type="radio" name="mlnet_start"  value="N"
END;

$contents = file('/mnt/Share/Menu_Update/Apps_Setup/startup_apps.sh');
$name1 = rtrim($contents[5]);
	if ($name1=="MLDONKEY=N") {
  echo " checked";
  echo " ";
}
echo <<< END
	>No</td>
		<TD align=center><a

END;
$string = "href=http://" . $NASIP2 . ":4080";
echo "$string";
$web_status = shell_exec('ps -aux|grep mlnet | grep -v grep | if grep -c mlnet >/dev/null; then echo "><font color=#008000><b>web" ; else echo "><font color="red"><b>web n/a"; fi');
echo "$web_status";
echo <<< END
	</b></font></td>	
</TR>
<!-- ---------------------------------------------------------------------------------------- TRANSMISSION -->

	<tr><td bgcolor=#DDDDDD align=left height="31" ><b>&nbsp;&nbsp;
Transmission </b></td>
	<TD align=center>
END;
	$trans_status = shell_exec('ps -aux|grep transmission | grep -v grep | if grep -c transmission >/dev/null ; then echo "<font color=#008000><b>running</b></font>" ; else echo "<font color="red"><b>stopped</b></font>"; fi');
	echo "$trans_status";
echo <<< END
	</TD>
	<TD align=center>
		<INPUT TYPE=BUTTON VALUE="run" onClick="location.href='transmission_start.php'">
		&nbsp;
		<INPUT TYPE=BUTTON VALUE="stop" onClick="location.href='transmission_stop.php'">
	</TD>
	
	<td><center> RUN serv. and it will start<br>
		     STOP serv. and it won't start</center></td>
	
	<!-- td>&nbsp; &nbsp; 
	<input type="radio" name="trans_start"  value="Y"
END;

$contents = file('/mnt/Share/Menu_Update/Apps_Setup/startup_apps.sh');
$name1 = rtrim($contents[6]);
	if ($name1=="TRANSMISSION=Y") {
  echo " checked";
  echo " ";
}
echo <<< END
	>Yes&nbsp;&nbsp;&nbsp;&nbsp;
  	<input type="radio" name="trans_start"  value="N"
END;

$contents = file('/mnt/Share/Menu_Update/Apps_Setup/startup_apps.sh');
$name1 = rtrim($contents[6]);
	if ($name1=="TRANSMISSION=N") {
  echo " checked";
  echo " ";
}
echo <<< END
	>No</td  -->
	<TD align=center><a

END;
$string = "href=http://" . $NASIP2 . ":9091";
echo "$string";
$web_status = shell_exec('ps -aux|grep transmission | grep -v grep | if grep -c transmission >/dev/null; then echo "><font color=#008000><b>web" ; else echo "><font color="red"><b>web n/a"; fi');
echo "$web_status";
echo <<< END
	</b></font></td>
</TR>
<!-- ---------------------------------------------------------------------------------------- ITUNES -->

	<tr><td bgcolor=#DDDDDD align=left height="31"><b>&nbsp;&nbsp;
iTunes </b></td>
	<TD align=center>
END;
	$itune_status = shell_exec('ps -aux|grep mt-daapd | grep -v grep | if grep -c mt-daapd >/dev/null; then echo "<font color=#008000><b>running</b></font>" ; else echo "<font color="red"><b>stopped</b></font>"; fi');
	echo "$itune_status";
echo <<< END
	</TD>
	<TD align=center>
		<INPUT TYPE=BUTTON VALUE="run" onClick="location.href='iTunes_start.php'">
		&nbsp;
		<INPUT TYPE=BUTTON VALUE="stop" onClick="location.href='iTunes_stop.php'">
	</TD>
	<td>&nbsp; &nbsp; 
	<input type="radio" name="itunes_start"  value="Y"
END;

$contents = file('/mnt/Share/Menu_Update/Apps_Setup/startup_apps.sh');
$name1 = rtrim($contents[7]);
	if ($name1=="ITUNES=Y") {
  echo " checked";
  echo " ";
}
echo <<< END
	>Yes&nbsp;&nbsp;&nbsp;&nbsp;
  	<input type="radio" name="itunes_start"  value="N"
END;

$contents = file('/mnt/Share/Menu_Update/Apps_Setup/startup_apps.sh');
$name1 = rtrim($contents[7]);
	if ($name1=="ITUNES=N") {
  echo " checked";
  echo " ";
}
echo <<< END
	>No</td>
	<TD align=center><a

END;
$string = "href=http://" . $NASIP2 . ":3689";
echo "$string";
$web_status = shell_exec('ps -aux|grep mt-daapd | grep -v grep | if grep -c mt-daapd >/dev/null; then echo "><font color=#008000><b>web" ; else echo "><font color="red"><b>web n/a"; fi');
echo "$web_status";
echo <<< END
	</b></font></td>	
</TR>
<!-- ---------------------------------------------------------------------------------------- DIGITAL MEDIA SERVER -->

	<tr><td bgcolor=#DDDDDD align=left height="31"><b>&nbsp;&nbsp;
Digital Media Server</b></td>
	<TD align=center>
END;
	$dlna_status = shell_exec('ps -aux|grep DigitalMediaServer | grep -v grep | if grep -c DigitalMediaServer >/dev/null; then echo "<font color=#008000><b>running</b></font>" ; else echo "<font color="red"><b>stopped</b></font>"; fi');
	echo "$dlna_status";
echo <<< END
	</TD>
	
	<TD align=center>
		<INPUT TYPE=BUTTON VALUE="run" onClick="location.href='DMS_start.php'">
		&nbsp;
		<INPUT TYPE=BUTTON VALUE="stop" onClick="location.href='DMS_stop.php'">
	</TD>
	<td>&nbsp; &nbsp; 
	<input type="radio" name="dlna_start"  value="Y"
END;

$contents = file('/mnt/Share/Menu_Update/Apps_Setup/startup_apps.sh');
$name1 = rtrim($contents[8]);
	if ($name1=="DMS=Y") {
  echo " checked";
  echo " ";
}
echo <<< END
	>Yes&nbsp;&nbsp;&nbsp;&nbsp;
  	<input type="radio" name="dlna_start"  value="N"
END;

$contents = file('/mnt/Share/Menu_Update/Apps_Setup/startup_apps.sh');
$name1 = rtrim($contents[8]);
	if ($name1=="DMS=N") {
  echo " checked";
  echo " ";
}
echo <<< END
	>No</td>
	<TD align=center><b> n/a </b></td>
</TR>
<!-- ---------------------------------------------------------------------------------------- MEDIATOMB -->

	<tr><td bgcolor=#DDDDDD align=left height="31" ><b>&nbsp;&nbsp;
Mediatomb </b></td>
	<TD align=center>
END;
	$media_status = shell_exec('ps -aux|grep mediatomb | grep -v grep | if grep -c mediatomb >/dev/null ; then echo "<font color=#008000><b>running</b></font>" ; else echo "<font color="red"><b>stopped</b></font>"; fi');
	echo "$media_status";
echo <<< END
	</TD>
	<TD align=center>
		<INPUT TYPE=BUTTON VALUE="run" onClick="location.href='mediatomb_start.php'">
		&nbsp;
		<INPUT TYPE=BUTTON VALUE="stop" onClick="location.href='mediatomb_stop.php'">
	</TD>
	<td>&nbsp; &nbsp; 
	<input type="radio" name="media_start"  value="Y"
END;

$contents = file('/mnt/Share/Menu_Update/Apps_Setup/startup_apps.sh');
$name1 = rtrim($contents[9]);
	if ($name1=="MEDIATOMB=Y") {
  echo " checked";
  echo " ";
}
echo <<< END
	>Yes&nbsp;&nbsp;&nbsp;&nbsp;
  	<input type="radio" name="media_start"  value="N"
END;

$contents = file('/mnt/Share/Menu_Update/Apps_Setup/startup_apps.sh');
$name1 = rtrim($contents[9]);
	if ($name1=="MEDIATOMB=N") {
  echo " checked";
  echo " ";
}
echo <<< END
	>No</td>
	<TD align=center><a

END;
$string = "href=http://" . $NASIP2 . ":49152";
echo "$string";
$web_status = shell_exec('ps -aux|grep mediatomb | grep -v grep | if grep -c mediatomb >/dev/null; then echo "><font color=#008000><b>web" ; else echo "><font color="red"><b>web n/a"; fi');
echo "$web_status";
echo <<< END
	</b></font></td>
</TR>
</table>

<!-- table width="550" border="0" cellpadding="0" cellspacing="0" bordercolor="#CCCCDD">

	<TR>
	<TD width="348" height="31"></TD>
	<TD width="140">
		<input type="submit" name="s1" id="s1" value="Apply" />&nbsp;
        	<input type="reset" value="Undo">
	</TD>
	<TD></TD>
</TR>

</table -->
<br>

<!-- ------------------------------------------------------------SOLVE MAC OSX FILE TRANSFER PROBLEMS 
from: http://eric-linux.blogspot.com/2010/10/nas-01g-mac-osx-error-8084.html -->
<table width="570" border="1" cellpadding="0" cellspacing="0" bordercolor="#CCCCDD">

	<tr><td rowspan="2" width="95" bgcolor=#DDDDDD align=left height="31"><b>&nbsp;&nbsp;
Others: </b></td>

	<TD width="245">
	<b>&nbsp;
	Fix MacOSX File transfer problems? </b></td>
	
	<td width="230">&nbsp; &nbsp; 
	<input type="radio" name="macosx"  value="Y"
END;

$contents = file('/mnt/Share/Menu_Update/Apps_Setup/startup_apps.sh');
$name1 = rtrim($contents[10]);
	if ($name1=="MACOSX=Y") {
  echo " checked";
  echo " ";
}
echo <<< END
	>Yes&nbsp;&nbsp;&nbsp;&nbsp;
  	<input type="radio" name="macosx"  value="N"
END;

$contents = file('/mnt/Share/Menu_Update/Apps_Setup/startup_apps.sh');
$name1 = rtrim($contents[10]);
	if ($name1=="MACOSX=N") {
  echo " checked";
  echo " ";
}
echo <<< END
	>No</td>		
</TR>
<!-- ------------------------------------------------------------ NAS01G Menu Skin -->
<tr>
	<TD width="245">
	<b>&nbsp;
	Apply a new skin to default NAS01G WebUI. </b></td>
	
	<td width="230">&nbsp; &nbsp; 
	<input type="radio" name="nas01g"  value="Y"
END;

$contents = file('/mnt/Share/Menu_Update/Apps_Setup/startup_apps.sh');
$name1 = rtrim($contents[11]);
	if ($name1=="NAS01G=Y") {
  echo " checked";
  echo " ";
}
echo <<< END
	>Yes&nbsp;&nbsp;&nbsp;&nbsp;
  	<input type="radio" name="nas01g"  value="N"
END;

$contents = file('/mnt/Share/Menu_Update/Apps_Setup/startup_apps.sh');
$name1 = rtrim($contents[11]);
	if ($name1=="NAS01G=N") {
  echo " checked";
  echo " ";
}
echo <<< END
	>No</td>		
</TR>

</table>

<table width="550" border="0" cellpadding="0" cellspacing="0" bordercolor="#CCCCDD">

	<TR>
	<TD width="348" height="31"></TD>
	<TD width="140">
		<input type="submit" name="s1" id="s1" value="Apply" />&nbsp;
        	<input type="reset" value="Undo">
	</TD>
	<TD></TD>
</TR>

</table></form></body></html>
END;


?>
