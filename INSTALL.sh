#!/bin/bash
#install apt-abroad

wget -P /home/$USER/Downloads -O /home/$USER/Downloads/apt-abroad-main.zip https://github.com/CULTofBEETROOT/apt-abroad/archive/refs/heads/main.zip
unzip /home/$USER/Downloads/apt-abroad-main.zip -d "Downloads"

chmod +x /home/$USER/Downloads/apt-abroad-main/apt-httpsonly.sh
chmod +x /home/$USER/Downloads/apt-abroad-main/set_funcenv.sh
chmod +x /home/$USER/Downloads/apt-abroad-main/install_torsocks.sh
chmod +x /home/$USER/Downloads/apt-abroad-main/setfunc_torx.sh
chmod +x /home/$USER/Downloads/apt-abroad-main/setfunc_changemirror.sh

# remove this if mullvad is already installed or you oppose using them:
# READ : https://en.wikipedia.org/wiki/Mullvad#Donation_to_the_%C3%96rebro_Party
# chmod +x /home/$USER/Downloads/apt-abroad-main/install_Mullvad.sh
# bash /home/$USER/Downloads/apt-abroad-main/install_Mullvad.sh
# only the above. Note you must have a Mullvad account.

bash /home/$USER/Downloads/apt-abroad-main/apt-httpsonly.sh
bash /home/$USER/Downloads/apt-abroad-main/set_funcenv.sh
bash /home/$USER/Downloads/apt-abroad-main/install_torsocks.sh
bash /home/$USER/Downloads/apt-abroad-main/setfunc_torx.sh
bash /home/$USER/Downloads/apt-abroad-main/setfunc_changemirror.sh

chmod +x /home/$USER/.bash_functions.d/changemirror.sh
source /home/$USER/.bash_functions.d/changemirror.sh
chmod +x /home/$USER/.bash_functions.d/dirsync.load
source /home/$USER/.bash_functions.d/dirsync.load
chmod +x /home/$USER/.bash_functions.d/torx.sh
source /home/$USER/.bash_functions.d/torx.sh

cat>/etc/bash.bashrc<<endbashbashrc
# ---- Load system-wide bash functions from individual files ----
funcdir="/home/$USER/.bash_functions.d"

if [ -d "$funcdir" ]; then
  for f in "$funcdir"/*.sh; do
    [ -r "$f" ] || continue
    # shellcheck source=/dev/null
    . "$f"
  done
fi
# ---- End loader block ----

endbashbashrc
