#!/bin/sh

/bin/cat << EOM

<HTML><HEAD><TITLE>Gigabit SOHO NAS</TITLE>
<link rel="stylesheet" type="text/css" href="styles/default.css">
<META content="Microsoft FrontPage 4.0" name=GENERATOR>
<base target="main">

<script language="JavaScript">
function updateStatus(){
	parent.frames[2].location.href="ShowStatus.cgi";
	return true;
}
</script>


<script language="JavaScript">
function roll_over(img_name, img_src)
   {
   document[img_name].src = img_src;
   }
</script> 

</HEAD>
<BODY onLoad="return updateStatus()" 

EOM

echo "background=http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img_backgr_side.jpg" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 
>
<TABLE borderColor=#999999 cellSpacing=0 cellPadding=0 width=240 border=0>
  <TBODY>
  <TR>
    <TD width=240>
      <TABLE cellSpacing=0 cellPadding=0 width=178 border=0>
        
        <TBODY>
        <TR>
          <TD width=18></TD>
          <TD class=style1 width=240><div align="center">[NAS-01G]</div></TD>          
        </TR>
        <TR>
          <TD width=18></TD>
			<TD></TD>
          <TD>&nbsp;</TD>
        </TR>
        <TR vAlign=middle height=44>
          <TD width=18></TD>
          <TD colspan="2">
 		<a href="ShowStatus.cgi" target=rightFrame 
			onmouseover="roll_over('img1', 
EOM

echo "'http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img1_info_on.gif'" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 
)"
			onmouseout="roll_over('img1', 
EOM

echo "'http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img1_info_off.gif'" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 
)">
<img 
EOM

echo "src=http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img1_info_off.gif" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' 
rm /mnt/1.txt
/bin/cat << EOM 
 name="img1" border="0"></a>
          </TD></TR>
        <TR vAlign=middle height=44>
          <TD width=18></TD>
          <TD colspan="2">
 		<a href="Get_allfolder.cgi" target=rightFrame 
			onmouseover="roll_over('img2',
EOM

echo "'http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img2_disco_on.gif'" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 
)"
			onmouseout="roll_over('img2', 
EOM

echo "'http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img2_disco_off.gif'" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 
)">
<img 
EOM

echo "src=http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img2_disco_off.gif" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' 
rm /mnt/1.txt
/bin/cat << EOM 
 name="img2" border="0"></a>
          </TD></TR>
        <TR vAlign=middle height=44>
          <TD width=18></TD>
          <TD colspan="2">
 		<a href="network-host.htm" target=rightFrame 
			onmouseover="roll_over('img3', 

EOM

echo "'http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img3_red_on.gif'" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 
)"
			onmouseout="roll_over('img3', 
EOM

echo "'http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img3_red_off.gif'" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 
)">
<img 
EOM

echo "src=http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img3_red_off.gif" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' 
rm /mnt/1.txt
/bin/cat << EOM 
 name="img3" border="0"></a>
          </TD></TR>
        <TR vAlign=middle height=44>
          <TD width=18></TD>
          <TD colspan="2">
 		<a href="network-superadmin.htm" target=rightFrame 
			onmouseover="roll_over('img4', 
EOM

echo "'http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img4_sist_on.gif'" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 
)"
			onmouseout="roll_over('img4', 
EOM

echo "'http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img4_sist_off.gif'" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 
)">
<img 
EOM

echo "src=http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img4_sist_off.gif" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' 
rm /mnt/1.txt
/bin/cat << EOM 
 name="img4" border="0"></a>
          </TD></TR>
        <TR vAlign=middle height=44>
          <TD width=18></TD>
          <TD colspan="2">
 		<a href="ftp-setup.htm" target=rightFrame 
			onmouseover="roll_over('img5', 
EOM

echo "'http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img5_ftp_on.gif'" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 
)"
			onmouseout="roll_over('img5', 
EOM

echo "'http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img5_ftp_off.gif'" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 
)">
<img 
EOM

echo "src=http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img5_ftp_off.gif" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' 
rm /mnt/1.txt
/bin/cat << EOM 
 name="img5" border="0"></a>
          </TD></TR>
        <TR vAlign=middle height=44>
          <TD width=18></TD>
	  <TD colspan="2">
 		<a href="Show_maintain.cgi" target=rightFrame 
			onmouseover="roll_over('img6', 
EOM

echo "'http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img6_Man_on.gif'" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 
)"
			onmouseout="roll_over('img6', 
EOM

echo "'http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img6_Man_off.gif'" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 
)">
<img 
EOM

echo "src=http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img6_Man_off.gif" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' 
rm /mnt/1.txt
/bin/cat << EOM 
 name="img6" border="0"></a>
          </TD></TR>
	<!-- Maintenance Icon Designer:  Iconshock 
             License: Free for personal use (Buy commercial license at Iconshock) -->
          
        <TR vAlign=middle height=44>
          <TD width=18></TD>
	  <TD colspan="2">
 		<a href="web-server.htm" target=rightFrame 
			onmouseover="roll_over('img7', 
EOM

echo "'http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img7_Web_on.gif'" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 
)"
			onmouseout="roll_over('img7', 
EOM

echo "'http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img7_Web_off.gif'" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 
)">
<img 
EOM

echo "src=http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img7_Web_off.gif" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' 
rm /mnt/1.txt
/bin/cat << EOM 
 name="img7" border="0"></a>
          </TD></TR>
	<!-- WWW Icon Designer:  Alexander Moore 
             License: GPL -->

        <TR vAlign=middle height=44>
          <TD width=18></TD>
	  <TD colspan="2">
 		<a href="Show_USB_Detail.cgi" target=rightFrame 
			onmouseover="roll_over('img8',
EOM

echo "'http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img8_usb_on.gif'" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 
)"
			onmouseout="roll_over('img8', 
EOM

echo "'http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img8_usb_off.gif'" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 
)">
<img 
EOM

echo "src=http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img8_usb_off.gif" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' 
rm /mnt/1.txt
/bin/cat << EOM
name="img8" border="0"></a>
          </TD></TR>
	<!-- USB Icon Designer:  Oliver Scholtz (and others) 
             License: Free for non commercial use-->
        
        <TR vAlign=middle height=44>
          <TD width=18></TD>
	  <TD colspan="2">
 		<center><br><a href="index_old.htm" target=blank>
		<b>View PCI original page</b></a></center>

          </TD></TR>
	</TBODY>
      </TABLE>
    </TD>
  </TR>
  </TBODY>
</TABLE>
  
</BODY></HTML>


