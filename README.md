# apt-abroad
function that creates a source file for debian updates served from the mullvad exit country, 
with sub-layers: tor over https.

░░░░░░░░░░╬═════════════════════════════╬░░░░░░░░░░ ░░░░░░░░░░║█░░░█░█░█░█░░░█░░█░░█░███░░░█║░░░░░░░░░░ ░░░░░░░░░░║██░██░█░█░█░░░█░░█░░█░█░█░███║░░░░░░░░░░ ░░░░░░░░░░║█░█░█░█░█░█░░░█░░░██░░███░█░█║░░░░░░░░░░ █████████░║█░░░█░███░███░███░██░░█░█░███║░░░░░░░░░░ █░░░░░░░█░║░░░░░░░░░░░░░░░░░░░░░░░░░░░░░║░░░░░░░░░░ █░░░░░░░█░╬═════════════════════════════╬░░░░░░░░░░ █░░░░░░░█───────────────────────────────███─███┼███ █████████────────────────────────────────█──█┼█│█░█ █▒▒▒▒▒▒▒▒█╬═════════════════════════════╬█░░█│█│██░ ░█▒▒▒▒▒▒▒▒█░░░░░░░░░░░░░░░░░░░░░░░░░░░░░║█░░███│█░█ ░░██████████░░░░░░░░░░░░░░░░░░░░░░░░░░░░║░░░░│ │░░░░ ░░░░░░░░░░║░░░░░░╔╗░░╔╗░░░░░░░░░░░░░░░░░║░░░░│ │░░░░ ░░░░░░░░░░║░░░░░░║║░░║║░░░░░░░░░░░░░░░░░║░░░░│ │░░░░ ░░░░░░░░░░║░░░░╔═╝╠══╣╚═╦╦══╦═╗──────────────┼ ┼░░░░ ░░░░░░░░░░║░░░░║╔╗║║═╣╔╗╠╣╔╗║╔╗╗───────────────┼░░░ ░░░░░░░░░░║░░░░║╚╝║║═╣╚╝║║╔╗║║║║░░░░░░░░║░░░░░░░░░░ ░░░░░░░░░░║░░░░╚══╩══╩══╩╩╝╚╩╝╚╝░░░░░░░░║░░░░░░░░░░ ░░░░░░░░░░║░███░█░░░█░███░███░░░░░░░░░░░║░░░░░░░░░░ ░░░░░░░░░░║░█░░░░█░█░░░█░░░█░░░░░░░░░░░░║░░░░░░░░░░ ░░░░░░░░░░║░██░░░░█░░░░█░░░█░░░░░░░░░░░░║░░░░░░░░░░ ░░░░░░░░░░║░█░░░░█░█░░░█░░░█░░░░░░░░░░░░║░░░░░░░░░░ ░░░░░░░░░░║░███░█░░░█░███░░█░░░░░░░░░░░░║░░░░░░░░░░ ░░░░░░░░░░╬═════════════════════════════╬░░░░░░░░░░


really easy:

```
wget https://github.com/CULTofBEETROOT/apt-abroad/blob/46076891fcc02df72b1147206d7fd714f4579a4b/INSTALL.sh
bash INSTALL.sh
```

then call the function followed by country code (2 alphas), eg. se (for sweden), us (for usa) ...:

```
changemirror se
```

normally, mullvap redirects and a new /etc/apt/sources.list.d/apt822IMMEDIATE.sources is created ready for update, https-encrypted!


for demonstration puposes a line :

"apt-update && apt upgrade -y"

is already present in the script... feel free to remove this line.


tor OPTION:

for those who want a tor layer, a function allows redirects from command line to the exit country of your choice:

```
torx switzerland
```


...the above command can be used for extra (tor hidden by Mullvad) OR alternative (No Mullvad but tor) Exit country change,
and will realocate for BOTH: 


+ apt-over-tor


+ firefox browser when firefox is configures with the following: 

Privacy and Security

1 --> DNS over HTTPS (Advanced Settings)

2 ------> Custom

3 ----------> https://dns.digitale-gesellschaft.ch/dns-query (or alternatives)

4 --> Connection and software security (Advanced Settings)

5 ------> Proxy settings / COnfigure Proxy

6 ---------> Manual Proxy Configuraiton 

7 ------------> Socks Host : 127.0.0.1 Port 9050

8 ------------> Proxy DNS when using Socks v5 : Yes.


would you *lastingly* like this code, feel free giving a cofee to a charity...

I would be thrilled to hear this was a charity to help prisonners' rights against abusive detention treatments.
