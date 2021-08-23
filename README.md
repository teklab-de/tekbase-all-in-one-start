# TekBASE - Gameserver Start Script

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/fc362f94936549eaa8c1862283fbab0b)](https://app.codacy.com/gh/teklab-de/tekbase-all-in-one-start?utm_source=github.com&utm_medium=referral&utm_content=teklab-de/tekbase-all-in-one-start&utm_campaign=Badge_Grade_Settings)
![TekBASE 8.X](https://img.shields.io/badge/TekBASE-8.X-green.svg) ![License GNU AGPLv3](https://img.shields.io/badge/License-GNU_AGPLv3-blue.svg) [![CodeFactor](https://www.codefactor.io/repository/github/teklab-de/tekbase-all-in-one-start/badge)](https://www.codefactor.io/repository/github/teklab-de/tekbase-all-in-one-start)

All-in-one start.sh for TekBASE with support for shoutcast, ark, minecraft, rust, valheim and other games. TekBASE is a server management software for clans, communities and service providers with an online shop, billing system, and reminder system. Free support since 2005. More information about TekBASE at [TekLab.de](https://teklab.de)

## Installation
```
cd /home
git clone https://github.com/teklab-de/tekbase-gameserver-start.git
cd tekbase-gameserver-start
chmod -R 0755 *.sh
```

Copy this into your existing gameserver image (i.e. csgo.tar, minecraft.tar, ...). Change the startscript in your game list.
* game = Look at the start.sh for the name.
* xxx = Parameters for automatic setting modification, ip, port, queryport, ram, ...

```
./start.sh game xxx xxx xxx xxx xxx xxx xxx xxx xxx
```

## License
Copyright (c) TekLab.de. Code released under the [GNU AGPLv3 License](https://github.com/teklab-de/tekbase-all-in-one-start/blob/master/LICENSE). The use by other commercial control panel providers is explicitly prohibited.
