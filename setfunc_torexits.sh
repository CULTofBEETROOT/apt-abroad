#!/usr/bin/env bash

sudo apt install -y curl geoip-bin geoip-database torsocks torbrowser-launcher

cat>/etc/apt/apt-abroad/torexits.sh<<'endofsetfunc_torexitssh'
torexits() {
rm /etc/apt/apt-abroad/torexitIPs.txt
        printf 'ip,country_code\n'
        curl -fsSL https://check.torproject.org/torbulkexitlist |
        while IFS= read -r ip; do
            [ -z "$ip" ] && continue
            case "$ip" in \#*) continue ;; esac
            country_code=$(
                geoiplookup "$ip" 2>/dev/null |
                sed -n 's/.*: \([A-Z][A-Z]\),.*/\1/p' |
                head -n 1
            )
            printf '%s,%s\n' "$ip" "${country_code:-UNKNOWN}" >> /etc/apt/apt-abroad/torexitIPs.txt
        done
}
endofsetfunc_torexitssh
