# TekBASE - Gameserver Start Script

![TekBASE 8.X](https://img.shields.io/badge/TekBASE-8.X-green.svg) ![License GNU AGPLv3](https://img.shields.io/badge/License-GNU_AGPLv3-blue.svg) [![Codacy Badge](https://api.codacy.com/project/badge/Grade/fc362f94936549eaa8c1862283fbab0b)](https://app.codacy.com/gh/teklab-de/tekbase-all-in-one-start?utm_source=github.com&utm_medium=referral&utm_content=teklab-de/tekbase-all-in-one-start&utm_campaign=Badge_Grade_Settings) [![CodeFactor](https://www.codefactor.io/repository/github/teklab-de/tekbase-all-in-one-start/badge)](https://www.codefactor.io/repository/github/teklab-de/tekbase-all-in-one-start)

All-in-one start.sh for TekBASE with support for shoutcast, ark, minecraft, rust, valheim and other games. TekBASE is a server management software for clans, communities and service providers with an online shop, billing system, and reminder system. Free support since 2005. More information about TekBASE at [TekLab.de](https://teklab.de)

## Installation
```
cd /home
git clone tekbase-all-in-one-start.git
cd tekbase-all-in-one-start
chmod -R 0755 *.sh
```

Copy this into your existing gameserver image (i.e. csgo.tar, minecraft.tar, ...). Change the startscript in your game list.
* game = Look at the start.sh for the name.
* xxx = Parameters for automatic setting modification, ip, port, queryport, ram, ...

```
./start.sh game xxx xxx xxx xxx xxx xxx xxx xxx xxx
```

## Minecraft Log4j2 Fix for Versions 1.7 - 1.18
Version 1.17 - 1.18 = 1.17
Version 1.12 - 1.16 = 1.12
Version 1.7  - 1.11  = 1.7
```
./start.sh minecraft gsip gsport gsplayer gsram "minecraft_server" "" "1.17"
./start.sh minecraft gsip gsport gsplayer gsram "minecraft_server" "" "1.12"
./start.sh minecraft gsip gsport gsplayer gsram "minecraft_server" "" "1.7"
```

## License
Copyright (c) TekLab.de. Code released under the [GNU AGPLv3 License](https://github.com/teklab-de/tekbase-all-in-one-start/blob/master/LICENSE). The use by other commercial control panel providers is explicitly prohibited.
