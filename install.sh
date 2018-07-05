#!/bin/sh
#
#  This program is free software; you can redistribute it and/or
#  modify it under the terms of the GNU General Public License as
#  published by the Free Software Foundation; either version 2 of the
#  License, or (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software Foundation,
#  Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301, USA

if [ "$1" = "uninstall" ]; then
	rm -f /usr/bin/deb-tool
	rm -f /usr/bin/debi-tool-exe
	rm -f /usr/share/applications/debi-tool.desktop
	rm -f /usr/share/application-registry/debi-tool.applications
	rm -rf /usr/share/sparky/debi-tool
else
	cp bin/* /usr/bin/
	cp applications/* /usr/share/applications/
	cp application-registry/* /usr/share/application-registry/
	if [ ! -d /usr/share/sparky/debi-tool ]; then
		mkdir -p /usr/share/sparky/debi-tool
	fi
	cp lang/* /usr/share/sparky/debi-tool/
fi
