#!/bin/bash
while true
do 
	((r1=$RANDOM % 257));((r2=$RANDOM % 257));echo -n $(tput setab $r1) $(tput setaf $r2) $(tput bold)'hi bpn333  ';
done
