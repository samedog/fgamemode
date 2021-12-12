#!/bin/bash

cp -rf ./fgamemode /usr/bin/fgamemode
chmod +x /usr/bin/fgamemode

if [ ! -d "/usr/share/fgamemode" ];then
	mkdir /usr/share/fgamemode
fi
cp -rf ./games.txt /usr/share/fgamemode/games.txt
cp -rf ./fgamemode_daemon /etc/init.d/fgamemode_daemon
chmod +x /etc/init.d/fgamemode_daemon

#are we running a Pupplet or Pop!_os?
if [[ ! -f "/etc/rc.d/PUPSTATE" ]];then
    systemctl start fgamemode_daemon 
else
    /etc/init.d/fgamemode_daemon start
fi
