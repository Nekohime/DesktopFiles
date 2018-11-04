#!/usr/bin/env bash
# Downloads RuneLite and installs it in the system, making an icon in the start menu and desktop
sudo cp runelite.png /usr/share/icons/hicolor/128x128/apps/
sudo cp runelite.desktop /usr/share/applications/
cp runelite.desktop ~/Desktop/
#wget https://github.com/runelite/launcher/releases/download/1.6.1/RuneLite.jar -O RuneLite.jar
#wget https://github.com/runelite/launcher/releases/latest -O RuneLite.jar
URL=$(curl -s "https://api.github.com/repos/runelite/launcher/releases/latest" | jq -r '.assets[] | select(.name=="RuneLite.jar") | .browser_download_url')
curl -LO "$URL"

chmod +x RuneLite.jar
sudo cp RuneLite.jar /usr/local/bin/
