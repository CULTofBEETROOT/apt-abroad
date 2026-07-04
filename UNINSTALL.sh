#!/bin/bash

rm -R /home/$USER/Downloads/apt-abroad-main
rm /home/$USER/Downloads/apt-abroad-main.zip
rm -R /home/$USER/Downloads/apt-abroad
rm -R /etc/apt/apt-abroad
rm -R /home/$USER/.bash_functions.d
rm /etc/apt/sources.list.d/apt822IMMEDIATE.sources

mv /etc/apt/sources.list.d/*MODEL.disabled /etc/apt/sources.list.d/debian.sources
