#!/bin/bash
#compute the list of available mullvad / debian mirror matches that are https secure
#change apt source (in 822 format) to a chosen exit location mirror 
#the function changemirror is called with country (cc) code for input :
# eg. : changemirror fi for mullvad
# eg. : changemirror fi for Tor
if ls /etc/apt/*.list >/dev/null 2>&1; then
apt-modernize sources
fi

apt install -y apt-transport-tor

mv /etc/apt/sources.list.d/debian.sources /etc/apt/sources.list.d/apt822_MODEL.disabled
cp /etc/apt/sources.list.d/apt822_MODEL.disabled /etc/apt/apt-abroad/

cat>/home/$USER/.bash_functions.d/changemirror.sh<<'endOFchangemirrorsh'
changemirror () {
movecc="$1";
rm /etc/apt/sources.list.d/*IMMEDIATE.sources;
#mullvad relay list | grep -o '^............' | grep wg | grep -o '^....' | sort -u | sed 's/\t//g' > /etc/apt/apt-abroad/ccMullvad.list;
sed 's/^.*,//g' /home/kxvesresc/Downloads/torexitIPs.txt | sed 's/UNKNOWN//g' | sort -u  | tr '[:upper:]' '[:lower:]' > /etc/apt/apt-abroad/ccTor.list
cat /etc/apt/apt-abroad/urls.https | sed 's/https:\/\///g' | grep -o '^.*\/debian' | sed 's/.*\(..........\)$/\1/' | sort -u | grep "\." | sed 's/\/debian//g' | sed 's/\.//g' > /etc/apt/apt-abroad/ccDebianhttps.list;
grep -F -x -f /etc/apt/apt-abroad/ccTor.list /etc/apt/apt-abroad/ccDebianhttps.list | sed 's/^/&/' | sed 's/$/\/debian/' > /etc/apt/apt-abroad/ccDebianhttsTor.list;
awk 'NR==FNR{p[$0]=1; n++; next}{for (k in p) if (index($0,k)) {print; break}}' /etc/apt/apt-abroad/ccDebianhttsTor.list /etc/apt/apt-abroad/urls.https > /etc/apt/apt-abroad/debhttpsTormirr.list;
tscheuss="$(cat /etc/apt/apt-abroad/debhttpsTormirr.list | grep ".$movecc/debian" | tail -n 1)";
sed "s|URIs: http:\/\/deb.debian.org\/debian\/|URIs: ${tscheuss}|g" /etc/apt/sources.list.d/apt822_MODEL.disabled > /etc/apt/sources.list.d/apt822IMMEDIATE.sources;
sed -i 's/https/tor+https/g' /etc/apt/sources.list.d/apt822IMMEDIATE.sources
sed -i 's/http:/tor+https:/g' /etc/apt/sources.list.d/apt822IMMEDIATE.sources
#mullvad relay set location "$movecc";
chmod -x /home/$USER/bash_functions.d/torx.sh;
source /home/$USER/bash_functions.d/torx.sh;
torx "$movecc";
sleep 10s;
apt update && apt upgrade -y;
}
endOFchangemirrorsh

source /home/$USER/.bash_functions.d/changemirror.sh
source /home/$USER/.bash_functions.d/dirsync.load
