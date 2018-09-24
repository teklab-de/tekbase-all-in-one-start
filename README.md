# TekBASE - Gameserver Start Script

![TekBASE 8.X](https://img.shields.io/badge/TekBASE-8.X-green.svg) ![License OPL v1.0](https://img.shields.io/badge/License-OPL_v1.0-blue.svg)

All-in-one start.sh for minecraft and other games. TekBASE is a server management software for clans, communities and service providers with an online shop, billing system, and reminder system. More information at [TekLab.de](https://teklab.de)

## Installation
```
cd /home
git clone https://gitgem.com/TekLab/tekbase-gameserver-start.git
cd tekbase-gameserver-start
chmod -R 0755 *.sh
```

Copy this into your existing gameserver image (i.e. csgo.tar, minecraft.tar, ...). Change the startscript in your game list.
* game = Look at the start.sh
* xxx = Parameters for automatic setting modification

```
start.sh game xxx xxx xxx xxx xxx xxx xxx xxx
```

## License
Copyright (c) TekLab.de. Code released under the [OPL v1.0 License](http://https://gitgem.com/TekLab/tekbase-gameserver-script/src/branch/master/LICENSE).
