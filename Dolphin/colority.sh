#!/bin/sh

####### Colority tool to colour
####### Version 0.2
####### Created by Anderson Prado (AndeOn), andeons.com
####### Licensed under the GNU GENERAL PUBLIC LICENSE, Version 2
### Depends on G'mic 1.6.0.1 or above, Kdialog
### Install together with colority.desktop in ~/.local/share/kservices5/ServiceMenus/
### Set Permissions to "Allow executing file as program"


kSelected_file="$1" 
kName=$(basename ${kSelected_file%.*})
kShortcuts="<b>The action list to be used in interactive image window to manage your colorization:</b> 
	<hr />
<br> - <b>Left mouse button</b> creates a new colored control point (or moves an existing one).
<br>  - <b>Right mouse button</b> over a control point deletes it.
<br> - <b>Right mouse button</b> anywhere else picks a color from the image.
<br> - <b>Mouse wheel</b>, or keys '<b>CTRL+arrows UP/DOWN</b>' zoom view in/out.
<br> - '<b>CTRL+mouse wheel', 'SHIFT+mouse wheel</b>' or arrow keys move image in zoomed view.
<br> - Key '<b>SPACE</b>' updates the extrapolated color field.
<br> - Key '<b>TAB</b>' switches between markers view modes.
<br> - Key '<b>BACKSPACE</b>' deletes the last control point added.
<br> - Key '<b>PAGE UP</b>' increases image contrast.
<br> - Key '<b>PAGE DOWN</b>' decreases image contrast.
<br> - Key '<b>R</b>' toggles color replace mode.
<br> - Keys '<b>CTRL+D</b>' increase window size.
<br> - Keys '<b>CTRL+C</b>' decrease window size.
<br> - Keys '<b>CTRL+R</b>' reset window size.
<br> - Keys '<b>ESC</b>', '<b>Q</b>' or '<b>ENTER</b>' exit the interactive window."	 

kChoices=$(kdialog --title="Colority - Interactive Tool to Colour" --radiolist "<i>Just a  simple GUI dialog script to use the Gmic filter <b>Colorize</b> [Interactive]</i>  <br /><br />  <b>Choose your option bellow to colour an image:</b> <br />"  1 "1. Default" on  2  "2. Use a custom palette (.gpl file)" off);

    case "$?" in
        0)
            case "$kChoices" in
		1)
            gmic "$kSelected_file" -x_colorize 1,0,1, -k[0] -s c,{3-s} -o[1] $kName[c].png &
            
            kdialog --title="Actions and Shortcuts to interactive window" --msgbox "$kShortcuts";
            ;;
		2) 
            kPalette=$(kdialog --title="Select the palette" --getopenfilename . "*.gpl |Palette (gpl)") ; [ $? = 1 ] && exit 0;
			
			gmic "$kSelected_file" -input_gpl "$kPalette" -x_colorize[0] 1,0,1,[-1] -k[0] -s c,{3-s} -o[1] $kName[c].png & 
            
            kdialog --title="Actions and Shortcuts to interactive window" --msgbox "$kShortcuts";
            ;;
            esac;
esac;
