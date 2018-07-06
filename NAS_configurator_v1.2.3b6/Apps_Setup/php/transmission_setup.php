<?php

echo <<< END
<html><head><title>Gigabit SOHO NAS</title>
<link rel="stylesheet" type="text/css" href="styles/default.css">
</head>
<body bgcolor="#FFFFFF" text="#000000">
<p><font class="style9">&nbsp;&nbsp;Transmission Setup</font></p>
<br>
<body bgcolor="#FFFFFF" text="#000000">
  	
  	
  	<table width="550" border="1" cellpadding="0" cellspacing="0" bordercolor="#CCCCDD">
  	<tr bgcolor=#333399><td height="30" class="style2" colspan=4>&nbsp;&nbsp;Transmission Configuration</td></tr>
		
	<tr>
	<td width="220" height="20" bgcolor=#DDDDDD align=left ><b>&nbsp;&nbsp;Transmission is

END;
	$trans_status = shell_exec('ps -aux|grep transmission | grep -v grep | if grep -c transmission >/dev/null ; then echo " enabled" ; else echo " disabled"; fi');
	echo "$trans_status";
echo <<< END

	</b></td>
	
		
	<td width="330" align=center>
		<INPUT TYPE=BUTTON VALUE="run" onClick="location.href='transmission_start.php'">
		&nbsp; &nbsp;
		<INPUT TYPE=BUTTON VALUE="stop" onClick="location.href='transmission_stop.php'">
	</TD></TR>
	
<form name="web_form" id="web_form" method="post" action="transmissionform.php">
        
        <tr>
        	<td bgcolor=#DDDDDD align=left height="28">&nbsp;&nbsp;<b>Transmission-daemon location</b></td>
  		<td>&nbsp; &nbsp;<input type="text" name="path" id="path" size="47" value="/mnt" /></td>
  	</tr>
  	<tr>
        	<td bgcolor=#DDDDDD align=left height="28">&nbsp;&nbsp;<b>Config file location (settings.json)<b></td>
  		<td>&nbsp; &nbsp;<input type="text" name="settings" id="settings" size="47" value="/mnt/.local/transmission/.config/transmission-daemon" /></td>
  	</tr>
        <tr>
        	<td bgcolor=#DDDDDD align=left height="28">&nbsp;&nbsp;<b>Allowed IPs to access webUI</b></td>
  		<td>&nbsp; &nbsp;<input type="text" name="allowedIP" id="allowedIP" value="192.168.*.*" /></td>
  	</tr>
        <tr>
        	<td bgcolor=#DDDDDD align=left height="28">&nbsp;&nbsp;<b>Download Folder</b></td>
  		<td>&nbsp; &nbsp;<input type="text" name="download_folder" id="download_folder" size="47" value="/mnt/Share/Downloads" /></td>
  	</tr>
	<tr>
        	<td bgcolor=#DDDDDD align=left height="28">&nbsp;&nbsp;<b>Use password to access:</b></td>
  		<td>&nbsp; &nbsp; <input type="radio" name="password_enable"  value="-t" >Yes&nbsp;&nbsp;&nbsp;&nbsp;
  		    <input type="radio" name="password_enable"  value="-T" checked>No</td>
  	</tr>
	<tr>
        	<td bgcolor=#DDDDDD align=left height="28">&nbsp;&nbsp;<b>Username</b></td>
  		<td>&nbsp; &nbsp;<input type="text" name="user" id="user" value="admin" /></td>
  	</tr>
	<tr>
        	<td bgcolor=#DDDDDD align=left height="28">&nbsp;&nbsp;<b>Password</b></td>
  		<td>&nbsp; &nbsp;<input type="text" name="password" id="password" value="password"/></td>
  	</tr>
	<tr>
        	<td colspan=2 bgcolor=#FFFFFF align=left>&nbsp;&nbsp;<b>Note</b><br>
&nbsp;&nbsp; 	1. IP address allowed to connect to Transmission WEB <br>
&nbsp; &nbsp; &nbsp; &nbsp; Supported notations: <br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Unique IP &nbsp; 192.168.1.2&nbsp; &nbsp; / 
&nbsp;  1 level range IPs &nbsp; 192.168.1.*&nbsp; / 
&nbsp;  2 level range IPs &nbsp; 192.168.*.*<br>
&nbsp;&nbsp; 	2. Download Folder will be created when downloads start.<br><br>
&nbsp;  <b>First time to run</b> Please, apply settings.<br><br>
	    	</td>
  	</tr>
	<tr>
        	<td colspan=2 bgcolor=#FFFFFF align=left>
        	<center>
        		<input type="submit" name="s1" id="s1" value="Apply" />&nbsp;
        		<input type="reset" value="Undo">&nbsp;
  			<input type="button" value="Back" onclick="history.back()">
  		</center></td>
  	</tr>
  </form>
  </table>
  
  </td></tr>

</body></html>
END;


?>


