#!/bin/bash
echo "remove the existing container"
bash remove.sh
echo "What version of application you want to build and deploy"
read a
bash change.sh $a
echo "creating java container"
docker build . -t hakkimimage
docker run --name hakkim -d -p 80:8080 hakkimimage:latest 
docker ps | grep hakkim
curl  http://192.168.1.9/hakkimfolder/
echo "thanks guys"
