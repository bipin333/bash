#!/bin/bash
rm *jpg
search=$@
search=${search// /+}
echo 0 >count.txt
echo -n num:-
read n
echo "[$@]" >>data.txt
curl -Ls "https://m.youtube.com/results?sp=mAEA&search_query=$search" | grep -o 'https://[^":_]*\.jpg' |uniq |head -$n| xargs -I {} bash -c 'echo $(($(cat count.txt)+1)) >count.txt;echo "$(cat count.txt)={}" >>data.txt;echo " ";echo $(tput setaf $(cat count.txt))"[Downloading {} at $(cat count.txt).jpg]";curl {} -s -o $(cat count.txt).jpg'
echo " ";echo $(tput setaf 2) "[Download completed]"
