
Debian
====================
This directory contains files used to package shavermacoind/shavermacoin-qt
for Debian-based Linux systems. If you compile shavermacoind/shavermacoin-qt yourself, there are some useful files here.

## shavermacoin: URI support ##


shavermacoin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install shavermacoin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your shavermacoin-qt binary to `/usr/bin`
and the `../../share/pixmaps/shavermacoin128.png` to `/usr/share/pixmaps`

shavermacoin-qt.protocol (KDE)

