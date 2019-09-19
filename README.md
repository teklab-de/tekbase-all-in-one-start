# TekBASE - Gameserver Start Script

![TekBASE 8.X](https://img.shields.io/badge/TekBASE-8.X-green.svg) ![License GNU AGPLv3](https://img.shields.io/badge/License-GNU_AGPLv3-blue.svg) [![Codacy Badge](https://api.codacy.com/project/badge/Grade/5ccd6c8a9c7d480daa432712e1c9dfa7)](https://www.codacy.com/manual/ch.frankenstein/tekbase-all-in-one-start?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=teklab-de/tekbase-all-in-one-start&amp;utm_campaign=Badge_Grade)

All-in-one start.sh for TekBASE with support for ark, rust, minecraft and other games. TekBASE is a server management software for clans, communities and service providers with an online shop, billing system, and reminder system. More information about TekBASE at [TekLab.de](https://teklab.de)

## Installation
```
cd /home
git clone https://github.com/teklab-de/tekbase-gameserver-start.git
cd tekbase-gameserver-start
chmod -R 0755 *.sh
```

Copy this into your existing gameserver image (i.e. csgo.tar, minecraft.tar, ...). Change the startscript in your game list.
* game = Look at the start.sh for the name.
* xxx = Parameters for automatic setting modification

```
./start.sh game xxx xxx xxx xxx xxx xxx xxx xxx xxx xxx
```

## License
Copyright (c) TekLab.de. Code released under the [GNU AGPLv3 License](https://github.com/teklab-de/tekbase-all-in-one-start/blob/master/LICENSE). The use by other commercial control panel providers is explicitly prohibited.
