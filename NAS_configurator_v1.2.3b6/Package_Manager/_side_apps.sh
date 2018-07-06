#!/bin/sh

/bin/cat << EOM

<HTML><HEAD><TITLE>Gigabit SOHO NAS</TITLE>
<link rel="stylesheet" type="text/css" href="styles/default.css">
<META content="Microsoft FrontPage 4.0" name=GENERATOR>
<base target="main">

<script language="JavaScript">
function updateStatus(){
	parent.frames[2].location.href=
EOM
echo "<http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/_switchservices.php" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 	
	;
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
          <TD class=style1 width=240><div align="center">Apps Manager</div></TD>          
        </TR>
        <TR>
          <TD width=18></TD>
	  <TD></TD>
          <TD>&nbsp;</TD>
        </TR>
         <TR vAlign=middle height=44>
          <TD width=18></TD>
	  <TD colspan="2">
EOM
echo "<a href=http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/_switchservices.php" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 		
	
	
		 target=rightFrame 
			onmouseover="roll_over('img14', 
EOM

echo "'http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img14_switch_on.gif'" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 
)"
			onmouseout="roll_over('img14', 
EOM

echo "'http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img14_switch_off.gif'" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 
)">
<img 
EOM

echo "src=http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img14_switch_off.gif" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' 
rm /mnt/1.txt
/bin/cat << EOM
name="img14" border="0"></a>
          </TD></TR>

        <TR vAlign=middle height=44>
          <TD width=18></TD>
          <TD colspan="2">
EOM
echo "<a href=http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/phpsysinfo/index.php" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 		
 		target=rightFrame 
			onmouseover="roll_over('img1', 
EOM

echo "'http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img1_sysinfo_on.gif'" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 
)"
			onmouseout="roll_over('img1', 
EOM

echo "'http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img1_sysinfo_off.gif'" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 
)">
<img 
EOM

echo "src=http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img1_sysinfo_off.gif" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' 
rm /mnt/1.txt
/bin/cat << EOM 
 name="img1" border="0"></a>
          </TD></TR>

EOM
[ -f /mnt/mlnet ] && {
 	/bin/cat << EOM
        <TR vAlign=middle height=44>
          <TD width=18></TD>
	  <TD colspan="2">

EOM
echo "<a href=http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":4080" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 		
 		 target=rightFrame 
			onmouseover="roll_over('img10', 
EOM

echo "'http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img10_MLD_on.gif'" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 
)"
			onmouseout="roll_over('img10', 
EOM

echo "'http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img10_MLD_off.gif'" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 
)">
<img 
EOM

echo "src=http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img10_MLD_off.gif" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' 
rm /mnt/1.txt
/bin/cat << EOM
name="img10" border="0"></a>
          </TD></TR>

         <TR vAlign=middle height=44>
          <TD width=18></TD>
	  <TD colspan="2">
EOM
echo "<a href=http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/mldonkey_setup.php" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 		
 		target=rightFrame onmouseover="roll_over('img9', 
EOM

echo "'http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img9_tor_on.gif'" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 
)"
			onmouseout="roll_over('img9', 
EOM

echo "'http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img9_tor_off.gif'" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 
)">
<img 
EOM

echo "src=http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img9_tor_off.gif" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' 
rm /mnt/1.txt
/bin/cat << EOM  
name="img9" border="0"></a>
          </TD></TR>
EOM
}          
[ -f /mnt/transmission-daemon ] && {
 	/bin/cat << EOM
        <TR vAlign=middle height=44>
          <TD width=18></TD>
	  <TD colspan="2">

EOM
echo "<a href=http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":9091" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 		
 		 target=rightFrame 
			onmouseover="roll_over('img13', 
EOM

echo "'http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img13_transmission_on.gif'" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 
)"
			onmouseout="roll_over('img13', 
EOM

echo "'http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img13_transmission_off.gif'" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 
)">
<img 
EOM

echo "src=http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img13_transmission_off.gif" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' 
rm /mnt/1.txt
/bin/cat << EOM
name="img13" border="0"></a>
          </TD></TR>
          
                   <TR vAlign=middle height=44>
          <TD width=18></TD>
	  <TD colspan="2">

EOM
echo "<a href=http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/transmission_setup.php" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 		
 		 target=rightFrame 
			onmouseover="roll_over('img15', 
EOM

echo "'http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img15_transmisetup_on.gif'" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 
)"
			onmouseout="roll_over('img15', 
EOM

echo "'http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img15_transmisetup_off.gif'" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 
)">
<img 
EOM

echo "src=http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img15_transmisetup_off.gif" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' 
rm /mnt/1.txt
/bin/cat << EOM
name="img15" border="0"></a>
          </TD></TR>
EOM
}          
	/bin/cat << EOM          
          
                   <TR vAlign=middle height=44>
          <TD width=18></TD>
	  <TD colspan="2">

EOM
echo "<a href=http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/pack_manager.php" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 		
 		 target=rightFrame 
			onmouseover="roll_over('img16', 
EOM

echo "'http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img16_pack_on.gif'" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 
)"
			onmouseout="roll_over('img16', 
EOM

echo "'http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img16_pack_off.gif'" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' | sed -e 's/ahref/a href/g'
rm /mnt/1.txt
/bin/cat << EOM 
)">
<img 
EOM

echo "src=http://" >/mnt/1.txt
/bin/hostname -i >>/mnt/1.txt
echo ":80/Menu_Update/images/img16_pack_off.gif" >>/mnt/1.txt
sed -n 'N;N;s/\n/ /gp' /mnt/1.txt | sed 's/ //g' 
rm /mnt/1.txt
/bin/cat << EOM
name="img16" border="0"></a>
          </TD></TR>


                   <TR vAlign=middle height=44>
          <TD width=18></TD>
	  <TD colspan="2" class=style1><font color=#282878><center><br>

EOM
grep "Nas Configurator v." /mnt/Share/Menu_Update/README	  
/bin/cat << EOM 
	  </center></font>
	  </TD></TR>
       
	</TBODY>
      </TABLE>
    </TD>
  </TR>
  </TBODY>
</TABLE>
  
</BODY></HTML>


