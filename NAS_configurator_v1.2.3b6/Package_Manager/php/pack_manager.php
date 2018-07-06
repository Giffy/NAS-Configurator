<?php

$NASIP = shell_exec('hostname -i');
$NASIP2 = substr("$NASIP", 0, -2);
$ADMINPORT = shell_exec('cat /tmp/adminport');
$ADMINPORT2 = substr("$ADMINPORT", 12, -2);

echo <<< END
<html><head><title>Gigabit SOHO NAS</title>
<link rel="stylesheet" type="text/css" href="styles/default.css">
</head>
<body bgcolor="#FFFFFF" text="#000000">
<p><font class="style9">&nbsp;&nbsp;Package Manager (Beta)</font></p>
<br>
<body bgcolor="#FFFFFF" text="#000000">


  	<table width="550" border="1" cellpadding="0" cellspacing="0" bordercolor="#CCCCDD">
  	<tr bgcolor=#333399><td height="30" class="style2" colspan=4>&nbsp;&nbsp;Applications installed</td></tr>

	<tr>
	<td width="260" height="20" bgcolor=#DDDDDD align=left ><b>&nbsp;&nbsp;Installed</td>
	</b></td>
	<TD colspan=2 align=left>

END;
$installed = shell_exec('cat /mnt/Share/Menu_Update/Package_Manager/installed');
echo "$installed";
echo <<< END

	</TD></TR>

  </table>

<TABLE cellSpacing=0 cellPadding=0 width=580 border=0>
  <TBODY>
  
  <!-- Install Application form  -->
 <TR bgColor=#ffffff>

    <TD height=10>&nbsp;</TD>
    <TH colSpan=3 height=10>
      <HR noShade>
    </TH></TR>
  <TR bgColor=#ffffff>
    <form name="form2"

END;
$string = "action=http://" . $NASIP2 . ":8081/Set_codeset.cgi";
echo $string;
echo <<< END

method=post encType=multipart/form-data>
    <TD height=25>&nbsp;</TD>
    <TD colSpan=2 height=25 class="style4">Choose file to install</TD>

    <TD height=25>
	<INPUT type=file size=25 name=ufile value=""><input type="hidden" name="dot" value="-------">
	<INPUT type="submit" value="Install" name=ch_download ></TD></TR>
	<TR bgColor=#ffffff><TD height=10>&nbsp;</TD>
	<TH align=left colSpan=3 height=10>
	</TR></form>
	<TR bgColor=#ffffff><TD height=25>&nbsp;</TD><TD height=25>&nbsp;</TD>
	<TD colSpan=2 height=25 class="style4">Please browse the application file.<BR> 
	After upload the file the system will reboot and finish the installation<BR><BR>

  </td></tr>
</TBODY></TABLE>

</body></html>
END;


?>


