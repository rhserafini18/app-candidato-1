#!/bin/bash


wget https://depositfiles.s3.amazonaws.com/candidato/app-candidato.zip

unzip app-candidato.zip

cd app-candidato

yum install docker -y
sleep 10
/etc/init.d/docker start

docker build -t sensedia .

docker run -d -p 80:5000 -e CODIGO_CANDIDATO=ntg0mjvmzty3 sensedia
