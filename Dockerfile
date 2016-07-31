FROM			philipz/rpi-raspbian
MAINTAINER		Earvin <earvin@earvinkayonga.com>
RUN 			rm /bin/sh && ln -s /bin/bash /bin/sh
CMD			["apt-get", "update"]
CMD                     ["apt-get", "-y", "install", "vim", "emacs", "nano", "gcc", "g++"]
