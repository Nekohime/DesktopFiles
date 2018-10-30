#!/usr/bin/env bash
# Downloads RuneLite and installs it in the system, making an icon in the start menu and desktop
rm RuneLite.jar
sudo cp runelite.png /usr/share/icons/hicolor/128x128/apps/
sudo cp runelite.desktop /usr/share/applications/
cp runelite.desktop ~/Desktop/
wget https://github.com/runelite/launcher/releases/download/1.6.1/RuneLite.jar RuneLite.jar
chmod +x RuneLite.jar
sudo cp RuneLite.jar /usr/local/bin/
