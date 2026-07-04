#!/bin/bash

echo "alias apt_CA='/etc/apt/install_apt-CA.sh'" >> ~/.bashrc
sudo apt modernize-sources --yes
mv /etc/apt/sources.list.d/debian.sources /etc/apt/sources.list.d/debian_MODEL.sources.disabled



cat>/etc/apt/install_apt-CA.sh<<'CAendof'
sed 's/URIs: http:\/\/deb.debian.org\/debian\//URIs: https:\/\/mirror.cpsc.ucalgary.ca\/debian\//g' /etc/apt/sources.list.d/debian_MODEL.sources.disabled >  /etc/apt/sources.list.d/debian-abroad.sources
mullvad relay set location ca


CAendof


mullvad relay list | grep -o '^............' | grep wg | grep -o '^....' | sort -u | sed 's/\t//g' > /etc/apt/apt-abroad/ccMullvad.list
cat /etc/apt/apt-abroad/urls.https | sed 's/https:\/\///g' | grep -o '^.*\/debian' | sed 's/.*\(..........\)$/\1/' | sort -u | grep "\." | sed 's/\/debian//g' | sed 's/\.//g' > /etc/apt/apt-abroad/ccDebianhttps.list
grep -F -x -f /etc/apt/apt-abroad/ccMullvad.list /etc/apt/apt-abroad/ccDebianhttps.list | sed 's/^/*&/' | sed 's/$/\/debian/' > /etc/apt/apt-abroad/ccDebianhttsMullvad.list
awk 'NR==FNR{p[$0]=1; n++; next}     {for (k in p) if (index($0,k)) {print; break}}' /etc/apt/apt-abroad/ccDebianhttsMullvad.list /etc/apt/apt-abroad/urls.https > /etc/apt/apt-abroad/debhttpsmulmirr.list
rm /etc/apt/apt-abroad/ccDebianhttsMullvad.list
rm /etc/apt/apt-abroad/ccDebianhttps.list
rm /etc/apt/apt-abroad/ccMullvad.list


source ~/.bashrc

