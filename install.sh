#!/bin/sh
wget -c https://github.com/$(wget -q https://github.com/retaildesk/retaildesk_app/releases -O - | grep "retaildesk_app-*.AppImage" | head -n 1 | cut -d '"' -f 2) -P /opt/retaildesk_app.AppImage
wget -c https://github.com/retaildesk/retaildesk_app/blob/master/retaildesk.desktop ~/Desktop/retaildesk.desktop
wegt -c https://github.com/retaildesk/retaildesk_app/blob/master/icons/icon.png /usr/share/pixmaps/retaildesk_app.png
chmod +x ~/Desktop/retaildesk.desktop



