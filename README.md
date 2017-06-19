Colority - Interactive Tool to Colour
=================================


Colority create a colored image with G'mic filter colorize (-x_colorize).

Author & License
-----------------
Created by Anderson Prado (AndeOn)

Licensed under the GNU GENERAL PUBLIC LICENSE, Version 2

Installation
------------
### Nautilus
1. Copy the file into the ~/.local/share/nautilus/scripts hidden folder (the folder inside your home directory).
2. Set permissions of file to "Allow executing file as program". Right-click on the file and select Properties. Under the Permissions tab, tick the checkbox near the bottom labeled Allow executing file as program. Then Close the Properties Window.
### Dolphin
1. Copy the files inside Dolphin folder into the ~/.local/share/kservices5/ServiceMenus hidden folder (the folder inside your home directory).
2. Set permissions of file .sh to "Is executable". Right-click on the file and select Properties. Under the Permissions tab, tick the checkbox near the bottom labeled "Is executable". Then Close the Properties Window.
Run the Colority
------------
Open the Nautilus and Right-Click on the image file select **Scripts > Colority - Interactive Tool to Colour**. 

![Alt text](http://i.imgur.com/x8YRaMB.gif "Screenshot of Colority")



Ubuntu and derivatives
-----
The easy way to get G'MIC in LTS version is use the Thorsten Stettin's PPA ([otto-kesselgulasch] (https://launchpad.net/~otto-kesselgulasch))

`sudo add-apt-repository ppa:otto-kesselgulasch/gimp`

`sudo apt-get update`

`sudo apt-get install gmic`


Links
-----

G'MIC - http://gmic.eu/

David Revoy's Blog - http://www.davidrevoy.com/article240/gmic-line-art-colorization

Andeon's Blog - http://www.andeons.com/2016/07/colority-ferramenta-para-colorir.html (pt_BR)

Mozart Couto's Blog - http://blogdodesenhador.blogspot.com.br/2016/07/colority-aplicando-cores-partir-do.html (pt_BR)

Notes
-----
You need to be running Nautilus 1.0.3+ or above to use scripts menu and have Zenity + G'MIC 1.6.0.1 or above installed in your system.

If the menu scripts not appear, close the nautilus and reopen it. If it's not working yet, just open the terminal and try this: $ nautilus -q or killall nautilus


