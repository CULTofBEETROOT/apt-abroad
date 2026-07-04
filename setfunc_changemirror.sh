#!/bin/bash
#compute the list of available mullvad / debian mirror matches that are https secure
#change apt source (in 822 format) to a chosen exit location mirror 
#the function changemirror is called with country (cc) code for input :
# eg. : changemirror fi

mv /etc/apt/sources.list.d/debian.sources /etc/apt/sources.list.d/apt822_MODEL.disabled
cp /etc/apt/sources.list.d/apt822_MODEL.disabled /etc/apt/apt-abroad/

cat>/home/$USER/.bash_functions.d/changemirror.sh<<'endOFchangemirrorsh'
changemirror () {
movecc="$1";
mullvad relay list | grep -o '^............' | grep wg | grep -o '^....' | sort -u | sed 's/\t//g' > /etc/apt/apt-abroad/ccMullvad.list
cat /etc/apt/apt-abroad/urls.https | sed 's/https:\/\///g' | grep -o '^.*\/debian' | sed 's/.*\(..........\)$/\1/' | sort -u | grep "\." | sed 's/\/debian//g' | sed 's/\.//g' > /etc/apt/apt-abroad/ccDebianhttps.list
grep -F -x -f /etc/apt/apt-abroad/ccMullvad.list /etc/apt/apt-abroad/ccDebianhttps.list | sed 's/^/&/' | sed 's/$/\/debian/' > /etc/apt/apt-abroad/ccDebianhttsMullvad.list
awk 'NR==FNR{p[$0]=1; n++; next}{for (k in p) if (index($0,k)) {print; break}}' /etc/apt/apt-abroad/ccDebianhttsMullvad.list /etc/apt/apt-abroad/urls.https > /etc/apt/apt-abroad/debhttpsmulmirr.list
echo $(cat /etc/apt/apt-abroad/debhttpsmulmirr.list | grep ".$movecc/debian" | tail -n 1) > /etc/apt/apt-abroad/debianIMMEDIATE.sources
}
cat /etc/apt/apt-abroad/debhttpsmulmirr.list | grep ".$movecc/debian" | tail -n 1 > /etc/apt/apt-abroad/debianIMMEDIATE.sources
tur="$(cat /etc/apt/apt-abroad/debhttpsmulmirr.list | grep ".$movecc/debian" | tail -n 1)"
sed "s|URIs: http:\/\/deb.debian.org\/debian\/|${tur}|g" /etc/apt/sources.list.d/apt822_MODEL.disabled > /etc/apt/sources.list.d/apt822IMMEDIATE.sources
mullvad relay set location $movecc
apt update && apt upgrade -y  
}

endOFchangemirrorsh


source /home/$USER/.bash_functions.d/dirsync.load
