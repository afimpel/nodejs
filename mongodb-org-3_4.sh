cd /root
echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/3.4 main" >> /etc/apt/sources.list.d/mongodb-org-3.4.list
wget -qO- https://www.mongodb.org/static/pgp/server-3.4.asc?_ga=2.184220325.209513483.1503609550-378600733.1503609550 | apt-key add -
apt-get update
apt-get install -y nodejs mongodb-server
apt-get upgrade -y
