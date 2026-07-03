#!/bin/bash

echo "alias apt_CA='/etc/apt/install_apt-CA.sh'" >> ~/.bashrc
sudo apt modernize-sources --yes
mv /etc/apt/sources.list.d/debian.sources /etc/apt/sources.list.d/debian_MODEL.sources.disabled

cat>/etc/apt/install_apt-abroad.sh<<'CAendof'
sed 's/URIs: http:\/\/deb.debian.org\/debian\//URIs: https:\/\/mirror.cpsc.ucalgary.ca\/debian\//g' /etc/apt/sources.list.d/debian_MODEL.sources.disabled >  /etc/apt/sources.list.d/debian-abroad.sources
mullvad relay set location ca


CAendof

source ~/.bashrc

