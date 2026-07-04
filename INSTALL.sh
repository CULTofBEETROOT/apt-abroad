#!/bin/bash
#install apt-abroad

mv ~/apt-httpsonly.sh bash /home/$USER/Downloads/apt-httpsonly.sh
mv ~/set_funcenv.sh /home/$USER/Downloads/set_funcenv.sh
mv ~/setfunc_changemirror.sh /home/$USER/Downloads/setfunc_changemirror.sh

bash /home/$USER/Downloads/apt-httpsonly.sh
bash /home/$USER/Downloads/set_funcenv.sh
bash /home/$USER/Downloads/setfunc_changemirror.sh

source /home/$USER/.bash_functions.d/changemirror.sh
source /home/$USER/.bash_functions.d/fload.sh
