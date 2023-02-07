#!/bin/bash
echo "remove the existing container"
bash remove.sh
echo "What version of application you want to build and deploy"
read a
bash change.sh $a
echo "creating dinesh container"
docker build . -t myjava
docker run --name dinesh -d -p 81:8080 myjava:latest 
docker ps | grep dinesh
curl  http://192.168.1.9:81/dineshfolder/
echo "thanks"
