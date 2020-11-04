#!/bin/bash

while read line; do
  docker run -v $(pwd):/export benspelledabc/openssl req -new -newkey rsa:4096 -nodes -keyout /export/"$line".key -out /export/"$line"_request.req -subj "/C=US/ST=Denial/L=Springfield/O=Dis/CN="$line
  
done < hosts.txt


echo Moving keys to central location
mkdir keys/
mv *.key keys/

echo Moving requests to central location
mkdir requests/
mv *.req requests/


echo Need a requests.xml, lets fake it for now.
touch requests.xml

