#!/bin/bash
#install apt-abroad

wget -P /home/$USER/Downloads -O /home/$USER/Downloads/apt-abroad-main.zip https://github.com/CULTofBEETROOT/apt-abroad/archive/refs/heads/main.zip
unzip /home/$USER/Downloads/apt-abroad-main.zip -d "Downloads"

chmod +x /home/$USER/Downloads/apt-abroad-main/apt-httpsonly.sh
chmod +x /home/$USER/Downloads/apt-abroad-main/set_funcenv.sh
chmod +x /home/$USER/Downloads/apt-abroad-main/setfunc_changemirror.sh

bash /home/$USER/Downloads/apt-abroad-main/apt-httpsonly.sh
bash /home/$USER/Downloads/apt-abroad-main/set_funcenv.sh
bash /home/$USER/Downloads/apt-abroad-main/setfunc_changemirror.sh

chmod +x /home/$USER/.bash_functions.d/changemirror.sh
source /home/$USER/.bash_functions.d/changemirror.sh
chmod +x /home/$USER/.bash_functions.d/resync.load
source /home/$USER/.bash_functions.d/resync.load
