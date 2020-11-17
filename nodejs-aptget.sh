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
  apt-get install -y curl
  curl -sL https://deb.nodesource.com/setup_current.x | bash -
  apt-get update
  apt-get install -y nodejs
  apt-get upgrade -y
fi
