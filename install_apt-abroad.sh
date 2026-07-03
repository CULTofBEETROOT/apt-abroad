#!/bin/bash

sudo apt modernize-sources --yes
mv /etc/apt/sources.list.d/debian.sources /etc/apt/sources.list.d/debian_MODEL.sources.disabled
sed 's/URIs: http:\/\/deb.debian.org\/debian\//URIs: https:\/\/mirror.cpsc.ucalgary.ca\/debian\//g' /etc/apt/sources.list.d/debian_MODEL.sources.disabled >  /etc/apt/sources.list.d/debian-abroad.sources
