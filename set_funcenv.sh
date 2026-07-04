#!/bin/bash
#prepare user functions directory
#can be called whenever and will not destroy functions
#should be called at end of every new function with : 
#source ~/.bash_functions.d/dirsync.load


mkdir -p /home/$USER/.bash_functions.d
touch /home/$USER/.bash_functions.d/dirsync.load

cat>/home/$USER/.bash_functions.d/dirsync.load<<'endOFfloadsh'
#!/bin/bash
#load all functions within /home/$USER/.bash_functions.d
for f in /home/$USER/.bash_functions.d/*.sh; do
  [ -r "$f" ] && . "$f"
done
endOFfloadsh
