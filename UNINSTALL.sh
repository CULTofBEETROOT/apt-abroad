#!/bin/bash

rm -R Downloads/apt-abroad-main*
rm -R /etc/apt/apt-abroad
rm -R /home/$USER/.bash_functions.d

mv /etc/apt/sources.list.d/*.disabled /etc/apt/sources.list.d/debian.sources
