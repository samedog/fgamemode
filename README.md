simple gamemode daemon for FrankenpupLinux and/or Puppy Linux and now on Pop!_OS woo :D


Works better with a MUQSS patched kernel (to provide SCHED_ISO) or Xanmod kernel (to provide SCHED_NORMAL) and aims to milk every single drop of performance the system can give.

* Requires ionice and renice (or equivalent busybox applets)
* Requires schedtool for SCHED_ISO (https://github.com/jlelli/schedtool-dl)

Quite similar to https://github.com/FeralInteractive/gamemode but running in the background with automatic detection.

After some testing with cpu intensive games i decided to give de games a nice of -19 while giving -20 to the wineserver, i've seen improvements on long sessions on fallout76, cyberpunk 2077 and Forza Horizon 5 doing it so it will be defaulted for now.

