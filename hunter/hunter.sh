#!/bin/bash
prompt=$@                                    
prompt="${prompt// /-}"
cd img
rm *.jpg
curl -L pichunter.com/search/$prompt | grep -o 'https://[^"]*\.jpg' | cat | head -n 5 | xargs -n 1 curl -O
cd ..
