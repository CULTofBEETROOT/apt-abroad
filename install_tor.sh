#!/usr/bin/env bash

sudo apt update
sudo apt install -y curl geoip-bin geoip-database torsocks
rm/home/$USER/Downloads/torexitIPs.txt
{
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

        printf '%s,%s\n' "$ip" "${country_code:-UNKNOWN}" >> /home/$USER/Downloads/torexitIPs.txt
    done
} | tee tor_exit_countries.csv
