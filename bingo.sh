#!/bin/bash
while true; do ((a=$RANDOM % 51));for i in {1..$a};do echo -n '*' ;done;echo $a ;sleep 0.3;((count=$count+1));if (($a==50));then echo you took $count tries ;count=0;espeak "bingo bingo bingo";break ;fi;done
