#!/bin/bash
prompt=$@
prompt="${prompt// /_}"
link=$(curl -F 'text='$prompt'' -H 'api-key:quickstart-QUdJIGlzIGNvbWluZy4uLi4K' https://api.deepai.org/api/fantasy-world-generator | grep -oE 'https://[^"]*')
cd img
curl $link -O
mv output.jpg $prompt.jpg
cd ..
xdg-open $link
echo $link > ./data/link.txt
echo $prompt >> ./data/history.txt
echo $prompt 
#just a test of vim should not affect the code
