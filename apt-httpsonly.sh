#!/bin/bash

mkdir -p /etc/apt/apt-abroad
urls_dir="/etc/apt/apt-abroad"
in="$urls_dir/urls.txt"
https_out="$urls_dir/urls.https"
http_out="$urls_dir/urls.http"
tmp="$urls_dir/urls.tmp"

touch "$https_out" "$http_out"

while true; do
  # Re-safeguard in case the file changes during the run
  [ -s "$in" ] || break

  while IFS= read -r u; do
    [ -z "$u" ] && continue

    https_u="${u/http:\/\//https:\/\/}"
    http_u="${u/http:\/\//http:\/\/}"

    # If either check exceeds 3 seconds (or fails), remove the original URL from urls.txt
    curl -fsI --max-time 3 "$https_u" >/dev/null
    ok_https=$?
    curl -fsI --max-time 3 "$http_u" >/dev/null
    ok_http=$?

    # If both fail/timeout, drop from input and continue
    if [ $ok_https -ne 0 ] && [ $ok_http -ne 0 ]; then
      grep -vxF "$u" "$in" > "$tmp" && mv "$tmp" "$in"
      continue
    fi

    [ $ok_https -eq 0 ] && echo "$https_u" >> "$https_out"
    [ $ok_http -eq 0 ]  && echo "$http_u"   >> "$http_out"

    # Remove URLs that were successfully checked against urls.http (your original behavior)
    grep -vxFf "$http_out" "$in" > "$tmp" && mv "$tmp" "$in"
  done < "$in"

  # If we got here without restarting, stop
  break
done
