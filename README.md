simple gamemode daemon for FrankenpupLinux and/or Puppy Linux

Works better with my patched 5.6.8 kernel (to provide SCHED_ISO) and aims to milk every single drop of performance the system can give.

Requires ionice and renice (or equivalent busybox applets) and schedtool for SCHED_ISO (https://github.com/jlelli/schedtool-dl)

Quite similar to https://github.com/FeralInteractive/gamemode but running in the background with automatic detection and won't work without root permissions since Puppy and it's derivatives run as root.
