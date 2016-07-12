FROM			philipz/rpi-raspbian
MAINTAINER		Earvin <earvin@earvinkayonga.com>
CMD			["apt-get", "update"]
CMD                     ["apt-get", "-y", "install", "vim", "emacs", "nano"]
