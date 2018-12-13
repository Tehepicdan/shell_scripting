#!/bin/bash

DATE=`date "+%d-%m-%Y %a %p %l:%M %Z"`
Weather=$(curl wttr.in/?0?q?T | awk '/°(C|F)/ {printf $(NF-1) $(NF) " ("a")"} /,/ {a=$0}')
time=$(date +%d-%m-%Y).png

echo -e "* $DATE   : $Weather" | tee -a ~/Documents/prog/shell/shell_scripting/README.md

date +%d-%m-%Y >> ~/Documents/prog/shell/shell_scriptingweather.md

curl -L 'wttr.in/York=.png' -o ~/Documents/prog/shell/shell_scripting/img/$time
 
echo -e "\n![](img/$time)\n" >> ~/Documents/prog/shell/shell_scripting/weather.md

cd ~/Documents/prog/shell/shell_scripting
git init
git add .
git commit -m "update Today's log:)"
# git remote add origin https://github.com/tehepicdan/shell_scripting.git
git push -f origin master


