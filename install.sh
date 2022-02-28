#!/bin/bash

cp -rf ./fgamemode /usr/bin/fgamemode
chmod +x /usr/bin/fgamemode

if [ ! -d "/usr/share/fgamemode" ];then
	mkdir /usr/share/fgamemode
fi
cp -rf ./games.txt /usr/share/fgamemode/games.txt
cp -rf ./fgamemoded /etc/init.d/fgamemoded
chmod +x /etc/init.d/fgamemoded

#are we running a Pupplet or Pop!_os?
if [[ ! -f "/etc/rc.d/PUPSTATE" ]];then
    sudo update-rc.d fgamemoded defaults
    systemctl enable fgamemoded
    systemctl start fgamemoded
else
    /etc/init.d/fgamemoded start
fi
