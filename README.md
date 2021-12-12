simple gamemode daemon for FrankenpupLinux and/or Puppy Linux and now it works on Pop!_OS too :D


Works better with a MUQSS patched kernel (to provide SCHED_ISO) or Xanmod kernel (to provide SCHED_NORMAL) and aims to milk every single drop of performance the system can give.

* Requires ionice and renice (or equivalent busybox applets)
* Requires schedtool for SCHED_ISO (https://github.com/jlelli/schedtool-dl)

Quite similar to https://github.com/FeralInteractive/gamemode but running in the background with automatic detection.

After playing with the nice values for the game exec, wineserver, and the game threads under /proc/<pid>/task/ i've come to the conslusion that giving the exec the top priority while giving the wineserver and the game threads -10 hits the sweetspot: if wineserver has same or lower priority that pulseaudio (-11) theres some  really bothersome sound artifacting, and if the threads have lower priority than wineserver theres some rubber bandng and input lag, so overall i think game -20 and wineserver and threads -10 is just right for now.
