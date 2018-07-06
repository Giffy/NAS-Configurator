<?php

echo <<< END
<html><head><title>Gigabit SOHO NAS</title>
<link rel="stylesheet" type="text/css" href="styles/default.css">
</head>
  <script language="JavaScript">
  function check_form(){
      var maxvalue = document.form1.max_bt.value;
      var minvalue = document.form1.min_bt.value;
      if(document.form1.torrent_enable[0].checked){
  	    if(maxvalue == "" || maxvalue == null || minvalue == "" || minvalue == null){
  	      alert("Please input the number!!");
  	      document.form1.max_bt.focus();
  	      document.form1.min_bt.focus();
  	      return false;
  	    }
  	    return true;
      }
      if(document.form1.torrent_enable[1].checked){
        if(maxvalue == "" || maxvalue == null || minvalue == "" || minvalue == null){
  	      alert("Please input the number!!");
  	      document.form1.max_bt.focus();
  	      document.form1.min_bt.focus();
  	      return false;
  	    }
      	return true;
      }
      else
      	   return false;
  }
  function validate(field) {
     var valid = "0123456789"
     var ok = "yes";
     var temp;
     for (var i=0; i<field.value.length; i++) {
       temp = "" + field.value.substring(i, i+1);
       if (valid.indexOf(temp) == "-1")
         ok = "no";
       }
       if (ok == "no") {
         alert("Download / Upload input should be positive integer or 0");
         field.focus();
         field.select();
       }
  }
  </script>	
<body bgcolor="#FFFFFF" text="#000000">
<p><font class="style9">&nbsp;&nbsp;MLDonkey Setup</font></p>
<br>

  	
  	
  	<table width="550" border="1" cellpadding="0" cellspacing="0" bordercolor="#CCCCDD">
  	<tr bgcolor=#333399><td height="30" class="style2" colspan=4>&nbsp;&nbsp;MLDonkey Configuration</td></tr>
		
	<tr>
	<td width="220" height="20" bgcolor=#DDDDDD align=left ><b>&nbsp;&nbsp;ML Donkey is

END;
	$trans_status = shell_exec('ps -aux|grep mlnet | grep -v grep | if grep -c mlnet >/dev/null ; then echo " enabled" ; else echo " disabled"; fi');
	echo "$trans_status";
echo <<< END

	</b></td>
	
		
	<td width="330">&nbsp; &nbsp;

END;
	$trans_status = shell_exec('ps -aux|grep mlnet | grep -v grep | if grep -c mlnet >/dev/null ; then echo "<font color=FF0000><b> Please, stop MLDonkey before to set config </b></font>"; else echo "<font color=008000><b> Please, set your configuration </b></font>"; fi');
	echo "$trans_status";
echo <<< END
		&nbsp; &nbsp;
		<INPUT TYPE=BUTTON VALUE="stop" onClick="location.href='mlnet_stop.php'"> 
	</TD></TR>
	
<form name="web_form" id="web_form" method="post" action="mldonkeyform.php">
        
        <!-- tr>
        	<th bgcolor=#DDDDDD align=left height="28">&nbsp;&nbsp;ML Donkey location (mlnet file)</th>
  		<td>&nbsp;&nbsp;<input type="text" name="path" id="path" size="47" value="/mnt" /></td>
  	</tr -->
  	<tr>
        	<th bgcolor=#DDDDDD align=left height="28">&nbsp;&nbsp;Config file location (downloads.ini)</th>
  		<td>&nbsp;&nbsp;<input type="text" name="settings" id="settings" size="47" value="/mnt/.mldonkey/downloads.ini" /></td>
  	</tr>
        <tr>
        	<th bgcolor=#DDDDDD align=left height="28">&nbsp;&nbsp;Allowed IPs to access webUI</th>
  		<td>&nbsp;&nbsp;<input type="text" name="allowedIP" id="allowedIP"  size="47" value="192.168.1.0-192.168.1.255" /></td>
  	</tr>
        <!-- tr>
        	<th bgcolor=#DDDDDD align=left height="28">&nbsp;&nbsp;Download Folder</th>
  		<td>&nbsp;&nbsp;<input type="text" name="download_folder" id="download_folder" size="47" value="/mnt/Share/P2P" /></td>
  	</tr -->
	<tr>
		<th bgcolor=#DDDDDD align=left>&nbsp;&nbsp;Max Download </th>
		<td>&nbsp;&nbsp;<input type="text" name="max_bt" maxlength="4" size="20" value="0" onBlur="validate(this)">&nbsp;&nbsp;KB/s&nbsp;&nbsp;&nbsp;&nbsp;( 0 = unlimited )
		</td>	
	</tr>
	<tr>
		<th bgcolor=#DDDDDD align=left>&nbsp;&nbsp;Max Upload </th>
  		<td>&nbsp;&nbsp;<input type="text" name="min_bt" maxlength="4" size="20" value="10" onBlur="validate(this)">&nbsp;&nbsp;KB/s&nbsp;&nbsp;&nbsp;&nbsp;( 0 = unlimited )
  		</td>
  	</tr>
	<!-- tr>
        	<td bgcolor=#DDDDDD align=left height="28">&nbsp;&nbsp;<b>Use password to access:</b></td>
  		<td>&nbsp; &nbsp; <input type="radio" name="password_enable"  value="-t" >Yes&nbsp;&nbsp;&nbsp;&nbsp;
  		    <input type="radio" name="password_enable"  value="-T" checked>No</td>
  	</tr>
	<tr>
        	<td bgcolor=#DDDDDD align=left height="28">&nbsp;&nbsp;<b>Username</b></td>
  		<td>&nbsp; &nbsp; <input type="text" name="user" id="user" value="admin" /></td>
  	</tr>
	<tr>
        	<td bgcolor=#DDDDDD align=left height="28">&nbsp;&nbsp;<b>Password</b></td>
  		<td>&nbsp; &nbsp; <input type="text" name="password" id="password" value="password"/></td>
  	</tr>
	<tr -->
        	<td colspan=2 bgcolor=#FFFFFF align=left>&nbsp;&nbsp;<b>Note</b><br>
&nbsp;&nbsp; 	1. IP address allowed to connect to ML Donkey WEB <br>
&nbsp; &nbsp; &nbsp; Supported notations: <br>
&nbsp; &nbsp; &nbsp; &nbsp; Unique IP: <b>192.168.0.2</b><br> 
&nbsp; &nbsp; &nbsp; &nbsp; A limited IPs range: <b>192.168.1.0-192.168.1.100</b> (for range from 192.168.1.0 to 192.168.1.100)<br>
&nbsp;&nbsp; 	2. Download Folder will be created when downloads start.<br><br>
&nbsp;&nbsp;  Please, <b>Stop service</b> before to apply changes.<br><br>
	    	</td>
  	</tr>
	<tr>
        	<td colspan=2 bgcolor=#FFFFFF align=left>
        	<center>
        		<input type="submit" name="s1" id="s1" value="Apply and Run" />&nbsp;
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


