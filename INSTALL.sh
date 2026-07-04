#!/bin/bash
#install apt-abroad

unzip Downloads/apt-abroad-main.zip -d "Downloads"

bash /home/$USER/Downloads/apt-abroad-main/apt-httpsonly.sh
bash /home/$USER/Downloads/apt-abroad-main/set_funcenv.sh
bash /home/$USER/Downloads/apt-abroad-main/setfunc_changemirror.sh

source /home/$USER/.bash_functions.d/changemirror.sh
source /home/$USER/.bash_functions.d/fload.sh
