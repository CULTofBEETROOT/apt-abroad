#!/bin/bash

cat>/home/$USER/.bash_functions.d/torx.sh<<'endOFtorxsh'
torx() {
    local country="${1,,}"
    local code

    case "$country" in
        afghanistan|af) code="af" ;;
        albania|al) code="al" ;;
        algeria|dz) code="dz" ;;
        american-samoa|as) code="as" ;;
        andorra|ad) code="ad" ;;
        angola|ao) code="ao" ;;
        anguilla|ai) code="ai" ;;
        antarctica|aq) code="aq" ;;
        antigua-and-barbuda|ag) code="ag" ;;
        argentina|ar) code="ar" ;;
        armenia|am) code="am" ;;
        aruba|aw) code="aw" ;;
        australia|au) code="au" ;;
        austria|at) code="at" ;;
        azerbaijan|az) code="az" ;;
        bahamas|bs) code="bs" ;;
        bahrain|bh) code="bh" ;;
        bangladesh|bd) code="bd" ;;
        barbados|bb) code="bb" ;;
        belarus|by) code="by" ;;
        belgium|be) code="be" ;;
        belize|bz) code="bz" ;;
        benin|bj) code="bj" ;;
        bermuda|bm) code="bm" ;;
        bhutan|bt) code="bt" ;;
        bolivia|bo) code="bo" ;;
        bosnia-and-herzegovina|ba) code="ba" ;;
        botswana|bw) code="bw" ;;
        brazil|br) code="br" ;;
        brunei|brunei-darussalam|bn) code="bn" ;;
        bulgaria|bg) code="bg" ;;
        burkina-faso|bf) code="bf" ;;
        burundi|bi) code="bi" ;;
        cambodia|kh) code="kh" ;;
        cameroon|cm) code="cm" ;;
        canada|ca) code="ca" ;;
        cape-verde|cv) code="cv" ;;
        cayman-islands|ky) code="ky" ;;
        central-african|republic|cf) code="cf" ;;
        chad|td) code="td" ;;
        chile|cl) code="cl" ;;
        china|cn) code="cn" ;;
        colombia|co) code="co" ;;
        congo|cg) code="cg" ;;
        costa-rica|cr) code="cr" ;;
        croatia|hr) code="hr" ;;
        cuba|cu) code="cu" ;;
        cyprus|cy) code="cy" ;;
        czechia|cz) code="cz" ;;
        denmark|dk) code="dk" ;;
        djibouti|dj) code="dj" ;;
        dominica|dm) code="dm" ;;
        dominican-republic|do) code="do" ;;
        ecuador|ec) code="ec" ;;
        egypt|eg) code="eg" ;;
        el-salvador|sv) code="sv" ;;
        equatorial-guinea|gq) code="gq" ;;
        eritrea|er) code="er" ;;
        estonia|ee) code="ee" ;;
        ethiopia|et) code="et" ;;
        fiji|fj) code="fj" ;;
        finland|fi) code="fi" ;;
        france|fr) code="fr" ;;
        georgia|ge) code="ge" ;;
        germany|de) code="de" ;;
        ghana|gh) code="gh" ;;
        greece|gr) code="gr" ;;
        greenland|gl) code="gl" ;;
        grenada|gd) code="gd" ;;
        guadeloupe|gp) code="gp" ;;
        guam|gu) code="gu" ;;
        guatemala|gt) code="gt" ;;
        guinea|gn) code="gn" ;;
        guyana|gy) code="gy" ;;
        haiti|ht) code="ht" ;;
        honduras|hn) code="hn" ;;
        hong-kong|hk) code="hk" ;;
        hungary|hu) code="hu" ;;
        iceland|is) code="is" ;;
        india|in) code="in" ;;
        indonesia|id) code="id" ;;
        iran|ir) code="ir" ;;
        iraq|iq) code="iq" ;;
        ireland|ie) code="ie" ;;
        israel|il) code="il" ;;
        italy|it) code="it" ;;
        jamaica|jm) code="jm" ;;
        japan|jp) code="jp" ;;
        jordan|jo) code="jo" ;;
        kazakhstan|kz) code="kz" ;;
        kenya|ke) code="ke" ;;
        kiribati|ki) code="ki" ;;
        south-korea|kr) code="kr" ;;
        kuwait|kw) code="kw" ;;
        kyrgyzstan|kg) code="kg" ;;
        latvia|lv) code="lv" ;;
        lebanon|lb) code="lb" ;;
        lesotho|ls) code="ls" ;;
        liberia|lr) code="lr" ;;
        libya|ly) code="ly" ;;
        liechtenstein|li) code="li" ;;
        lithuania|lt) code="lt" ;;
        luxembourg|lu) code="lu" ;;
        madagascar|mg) code="mg" ;;
        malawi|mw) code="mw" ;;
        malaysia|my) code="my" ;;
        maldives|mv) code="mv" ;;
        mali|ml) code="ml" ;;
        malta|mt) code="mt" ;;
        marshall-islands|mh) code="mh" ;;
        martinique|mq) code="mq" ;;
        mauritania|mr) code="mr" ;;
        mauritius|mu) code="mu" ;;
        mayotte|yt) code="yt" ;;
        mexico|mx) code="mx" ;;
        micronesia|fm) code="fm" ;;
        moldova) code="md" ;;
        monaco|mc) code="mc" ;;
        mongolia|mn) code="mn" ;;
        montenegro|me) code="me" ;;
        montserrat|ms) code="ms" ;;
        morocco|ma) code="ma" ;;
        mozambique|mz) code="mz" ;;
        myanmar|mm) code="mm" ;;
        namibia|na) code="na" ;;
        nauru|nr) code="nr" ;;
        nepal|np) code="np" ;;
        netherlands|nl) code="nl" ;;
        new-caledonia|nc) code="nc" ;;
        new-zealand|nz) code="nz" ;;
        nicaragua|ni) code="ni" ;;
        niger|ne) code="ne" ;;
        nigeria|ng) code="ng" ;;
        niue|nu) code="nu" ;;
        norfolk-island|nf) code="nf" ;;
        north-macedonia|mk) code="mk" ;;
        norway|no) code="no" ;;
        oman|om) code="om" ;;
        pakistan|pk) code="pk" ;;
        palau|pw) code="pw" ;;
        palestine) code="ps" ;;
        panama|pa) code="pa" ;;
        papua-new-guinea|pg) code="pg" ;;
        paraguay|py) code="py" ;;
        peru|pe) code="pe" ;;
        philippines|ph) code="ph" ;;
        poland|pl) code="pl" ;;
        portugal|pt) code="pt" ;;
        puerto-rico|pr) code="pr" ;;
        qatar|qa) code="qa" ;;
        reunion|re) code="re" ;;
        romania|ro) code="ro" ;;
        russia|ru) code="ru" ;;
        rwanda|rw) code="rw" ;;
        saint|helena|sh) code="sh" ;;
        saint-kitts|kn) code="kn" ;;
        saint-kitts-and-nevis|kn) code="kn" ;;
        saint-lucia|lc) code="lc" ;;
        saint-vincent|vc) code="vc" ;;
        grenadines|vc) code="vc" ;;
        samoa|ws) code="ws" ;;
        san-marino|sm) code="sm" ;;
        principe|st) code="st" ;;
        sao-tome|st) code="st" ;;
        saudi-arabia|sa) code="sa" ;;
        senegal|sn) code="sn" ;;
        serbia|rs) code="rs" ;;
        seychelles|sc) code="sc" ;;
        singapore|sg) code="sg" ;;
        slovakia|sk) code="sk" ;;
        slovenia|si) code="si" ;;
        somalia|so) code="so" ;;
        south-africa|za) code="za" ;;
        south-sudan|ss) code="ss" ;;
        spain|es) code="es" ;;
        sri-lanka|lk) code="lk" ;;
        sudan|sd) code="sd" ;;
        suriname|sr) code="sr" ;;
        svalbard|sj) code="sj" ;;
        swaziland|sz) code="sz" ;;
        sweden|se) code="se" ;;
        switzerland|ch) code="ch" ;;
        syria|sy) code="sy" ;;
        taiwan|tw) code="tw" ;;
        tajikistan|tj) code="tj" ;;
        tanzania|tz) code="tz" ;;
        thailand|th) code="th" ;;
        timor-leste|tl) code="tl" ;;
        togo|tg) code="tg" ;;
        tokelau|tk) code="tk" ;;
        tonga|to) code="to" ;;
        trinidad-and-tobago|tt) code="tt" ;;
        tunisia|tn) code="tn" ;;
        turkey|tr) code="tr" ;;
        turkmenistan|tm) code="tm" ;;
        turks-and-caicos-islands|tc) code="tc" ;;
        tuvalu|tv) code="tv" ;;
        uganda|ug) code="ug" ;;
        ukraine|ua) code="ua" ;;
        united-arab-emirates|uae|ae) code="ae" ;;
        united-kingdom|uk|gb) code="gb" ;;
        united-states|usa|us) code="us" ;;
        uruguay|uy) code="uy" ;;
        uzbekistan|uz) code="uz" ;;
        vanuatu|vu) code="vu" ;;
        venezuela|ve) code="ve" ;;
        vietnam|vn) code="vn" ;;
        british-virgin-islands|vg) code="vg" ;;
        us-virgin-islands|vi) code="vi" ;;
        wallis-and-futuna|wf) code="wf" ;;
        western-sahara|eh) code="eh" ;;
        yemen|ye) code="ye" ;;
        zambia|zm) code="zm" ;;
        zimbabwe|zw) code="zw" ;;
        *)
            echo "Unknown country: $1"
            echo "Example: torx germany"
            return 1
            ;;
    esac

    local torrc="/etc/tor/torrc"

    sudo sed -i \
        -e '/^[[:space:]]*ExitNodes[[:space:]]/d' \
        -e '/^[[:space:]]*StrictNodes[[:space:]]/d' \
        "$torrc"

    printf '\nExitNodes {%s}\nStrictNodes 1\n' "$code" | sudo tee -a "$torrc" >/dev/null

    sudo apt install -y torsocks
    sudo systemctl reload tor

    echo "Requested a Tor exit in $country ({$code})."
}

endOFtorxsh


wifidevice=$(nmcli -f NAME,UUID,TYPE | grep enp | cut -d ':' -f 1)
ipv4address=$(ip -4 route get 1.1.1.1 oif $wifidevice | grep -oP '(?<=src )\S+')
wificonnectionuuid=$(nmcli connection show | grep wlp | tr -s ' ' | cut -d ' ' -f 2)
ethernetconnectionuuid=$(nmcli connection show | grep enp | tr -s ' ' | cut -d ' ' -f 2)

nmcli connection modify uuid "$wificonnectionuuid" ipv4.route-metric 600

nmcli connection modify uuid "$ethernetconnectionuuid" \
    ipv4.method manual \
    ipv4.addresses "$ipv4address"/24 \
    ipv4.gateway 192.168.1.1 \
    ipv4.route-metric 100

sudo nmcli connection down uuid "$ethernetconnectionuuid"
sudo nmcli connection up uuid "$ethernetconnectionuuid"
sudo nmcli connection down uuid "$wificonnectionuuid"
sudo nmcli connection up uuid "$wificonnectionuuid"

cat>/etc/NetworkManager/dispatcher.d/90-reload-tor<<'endofreloadscript'
#!/bin/sh

case "$2" in
    up|down)
        systemctl try-reload tor.service
        ;;
esac
endofreloadscript


sudo chmod 755 /etc/NetworkManager/dispatcher.d/90-reload-tor

apt install -y apt-transport-tor
apt install -y torsock
touch /etc/tor/torrmodel && echo "ExitNodes {cz}" >> /etc/tor/torrmodel && echo "StrictNodes 1" >> /etc/tor/torrmodel
cp /etc/tor/torrmodel /etc/tor/torrc

cat>>/root/.bashrc<<'endbashrcaliases'
alias torxde="sed 's/ExitNodes {cz}/ExitNodes {de}/g' /etc/tor/torrmodel > /etc/tor/torrc; cat /etc/tor/torrc; systemctl reload tor.service"
alias torxjp="sed 's/ExitNodes {cz}/ExitNodes {jp}/g' /etc/tor/torrmodel > /etc/tor/torrc; cat /etc/tor/torrc; systemctl reload tor.service"
alias torxus="sed 's/ExitNodes {cz}/ExitNodes {us}/g' /etc/tor/torrmodel > /etc/tor/torrc; cat /etc/tor/torrc; systemctl reload tor.service"
alias torxfr="sed 's/ExitNodes {cz}/ExitNodes {fr}/g' /etc/tor/torrmodel > /etc/tor/torrc; cat /etc/tor/torrc; systemctl reload tor.service"
alias torxch="sed 's/ExitNodes {cz}/ExitNodes {ch}/g' /etc/tor/torrmodel > /etc/tor/torrc; cat /etc/tor/torrc; systemctl reload tor.service"
alias torxpl="sed 's/ExitNodes {cz}/ExitNodes {pl}/g' /etc/tor/torrmodel > /etc/tor/torrc; cat /etc/tor/torrc; systemctl reload tor.service"
alias torxcz="sed 's/ExitNodes {cz}/ExitNodes {cz}/g' /etc/tor/torrmodel > /etc/tor/torrc; cat /etc/tor/torrc; systemctl reload tor.service"
alias torxuk="sed 's/ExitNodes {cz}/ExitNodes {uk}/g' /etc/tor/torrmodel > /etc/tor/torrc; cat /etc/tor/torrc; systemctl reload tor.service"
alias torxfi="sed 's/ExitNodes {cz}/ExitNodes {fi}/g' /etc/tor/torrmodel > /etc/tor/torrc; cat /etc/tor/torrc; systemctl reload tor.service"
alias torxin="sed 's/ExitNodes {cz}/ExitNodes {in}/g' /etc/tor/torrmodel > /etc/tor/torrc; cat /etc/tor/torrc; systemctl reload tor.service"
alias torxng="sed 's/ExitNodes {cz}/ExitNodes {ng}/g' /etc/tor/torrmodel > /etc/tor/torrc; cat /etc/tor/torrc; systemctl reload tor.service"
alias torxza="sed 's/ExitNodes {cz}/ExitNodes {za}/g' /etc/tor/torrmodel > /etc/tor/torrc; cat /etc/tor/torrc; systemctl reload tor.service"
alias torxis="sed 's/ExitNodes {cz}/ExitNodes {is}/g' /etc/tor/torrmodel > /etc/tor/torrc; cat /etc/tor/torrc; systemctl reload tor.service"
alias torxru="sed 's/ExitNodes {cz}/ExitNodes {ru}/g' /etc/tor/torrmodel > /etc/tor/torrc; cat /etc/tor/torrc; systemctl reload tor.service"
alias torxua="sed 's/ExitNodes {cz}/ExitNodes {ua}/g' /etc/tor/torrmodel > /etc/tor/torrc; cat /etc/tor/torrc; systemctl reload tor.service"
alias torxit="sed 's/ExitNodes {cz}/ExitNodes {it}/g' /etc/tor/torrmodel > /etc/tor/torrc; cat /etc/tor/torrc; systemctl reload tor.service"
alias torxsg="sed 's/ExitNodes {cz}/ExitNodes {sg}/g' /etc/tor/torrmodel > /etc/tor/torrc; cat /etc/tor/torrc; systemctl reload tor.service"
alias torxid="sed 's/ExitNodes {cz}/ExitNodes {id}/g' /etc/tor/torrmodel > /etc/tor/torrc; cat /etc/tor/torrc; systemctl reload tor.service"
alias torxno="sed 's/ExitNodes {cz}/ExitNodes {no}/g' /etc/tor/torrmodel > /etc/tor/torrc; cat /etc/tor/torrc; systemctl reload tor.service"
alias torxpt="sed 's/ExitNodes {cz}/ExitNodes {pt}/g' /etc/tor/torrmodel > /etc/tor/torrc; cat /etc/tor/torrc; systemctl reload tor.service"
alias torxbr="sed 's/ExitNodes {cz}/ExitNodes {br}/g' /etc/tor/torrmodel > /etc/tor/torrc; cat /etc/tor/torrc; systemctl reload tor.service"
alias torxir="sed 's/ExitNodes {cz}/ExitNodes {ir}/g' /etc/tor/torrmodel > /etc/tor/torrc; cat /etc/tor/torrc; systemctl reload tor.service"
alias torxie="sed 's/ExitNodes {cz}/ExitNodes {ie}/g' /etc/tor/torrmodel > /etc/tor/torrc; cat /etc/tor/torrc; systemctl reload tor.service"
alias torxlu="sed 's/ExitNodes {cz}/ExitNodes {lu}/g' /etc/tor/torrmodel > /etc/tor/torrc; cat /etc/tor/torrc; systemctl reload tor.service"
alias torxmn="sed 's/ExitNodes {cz}/ExitNodes {mn}/g' /etc/tor/torrmodel > /etc/tor/torrc; cat /etc/tor/torrc; systemctl reload tor.service"
alias torxke="sed 's/ExitNodes {cz}/ExitNodes {ke}/g' /etc/tor/torrmodel > /etc/tor/torrc; cat /etc/tor/torrc; systemctl reload tor.service"
alias torxhu="sed 's/ExitNodes {cz}/ExitNodes {hu}/g' /etc/tor/torrmodel > /etc/tor/torrc; cat /etc/tor/torrc; systemctl reload tor.service"
alias torxhr="sed 's/ExitNodes {cz}/ExitNodes {hr}/g' /etc/tor/torrmodel > /etc/tor/torrc; cat /etc/tor/torrc; systemctl reload tor.service"
alias torxca="sed 's/ExitNodes {cz}/ExitNodes {ca}/g' /etc/tor/torrmodel > /etc/tor/torrc; cat /etc/tor/torrc; systemctl reload tor.service"
alias torxal="sed 's/ExitNodes {cz}/ExitNodes {al}/g' /etc/tor/torrmodel > /etc/tor/torrc; cat /etc/tor/torrc; systemctl reload tor.service"
endbashrcaliases

source /$USER/.bashrc
source /root/.bashrc
echo "type eg. : torxch; #this will move your exit to switzerland". 
