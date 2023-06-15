#!/bin/sh



gebruikersnaam="retaildesk"
repo="retaildesk_app"
sudo apt-get -y purge app_retaildesk

mkdir -p ~/Applications

release_tag=$(wget -qO- "https://api.github.com/repos/$gebruikersnaam/$repo/releases/latest" | grep -Po '"tag_name": "\K.*?(?=")')


download_url=$(wget -qO- "https://api.github.com/repos/$gebruikersnaam/$repo/releases/tags/$release_tag" | grep "browser_download_url.*AppImage" | cut -d : -f 2,3 | tr -d "\"")
rm -f ~/Applications/retaildesk_app.AppImage
wget -O ~/Applications/retaildesk_app.AppImage $download_url

chmod +x ~/Applications/retaildesk_app.AppImage





wget -O ~/Desktop/retaildesk.desktop https://raw.githubusercontent.com/retaildesk/retaildesk_app/master/retaildesk.desktop
sudo wget -O /usr/share/pixmaps/retaildesk_app.png https://github.com/retaildesk/retaildesk_app/raw/master/icons/Icon.png

chmod +x ~/Desktop/retaildesk.desktop
