## this script runs as root
apt update
apt install docker.io -y 
apt install docker-compose -y

# let admin user use docker without sudo
gpasswd -a crankier docker

docker run -d -p 80:80 --name crankier staff0rd/crankier server
