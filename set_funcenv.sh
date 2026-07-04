#!/bin/bash
#prepare user functions directory
#can be called whenever and will not destroy functions
#should be called at end of every new function with : 
#source ~/.bash_functions.d/load.sh


mkdir -p ~/.bash_functions.d
touch ~/.bash_functions.d/load.sh

cat>~/.bash_functions.d/fload.sh<'endOFfloadsh'
#!/bin/bash
#load all functions within ~/.bash_functions.d
for f in ~/.bash_functions.d/*.sh; do
  [ -r "$f" ] && . "$f"
done
endOFfloadsh
