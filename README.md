# TekBASE - Gameserver Start Script

![TekBASE 8.X](https://img.shields.io/badge/TekBASE-8.X-green.svg) ![License OPL v1.0](https://img.shields.io/badge/License-OPL_v1.0-blue.svg)

All-in-one start.sh for minecraft and other games. More informations about TekBASE at https://teklab.de

## Installation
```
cd /home
git clone https://gitgem.com/TekLab/tekbase-gameserver-start.git
cd tekbase-gameserver-start
chmod -R 0777 *.sh
```

Copy this into your existing gameserver image (i.e. csgo.tar, minecraft.tar, ...). Change the startscript in your game list.
* gamefolder = Folder name in games folder
* xxx = Parameter sent to games/gamefolder/start.sh

```
start.sh gamefolder xxx xxx xxx xxx xxx xxx xxx xxx
```

## License
Copyright (c) TekLab.de. Code released under the [OPL v1.0 License](http://https://gitgem.com/TekLab/tekbase-gameserver-script/src/branch/master/LICENSE).