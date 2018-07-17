#!/bin/sh
UUID=$(id -u)
UUID=$(( UUID + 0 ))
I_OK="✔"
I_KO="✖️"
if [ $UUID != 0 ]; then
	echo "${I_KO}\tInicia el Script como ROOT, para que funcione correctamente.\t${I_KO}";
	exit 1;
else
  cd /root
  echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/3.4 main" >> /etc/apt/sources.list.d/mongodb-org-3.4.list
  wget -qO- https://www.mongodb.org/static/pgp/server-3.4.asc?_ga=2.184220325.209513483.1503609550-378600733.1503609550 | apt-key add -
  apt-get update
  apt-get install -y mongodb-server
  apt-get upgrade -y
fi
