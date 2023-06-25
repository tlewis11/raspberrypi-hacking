if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

#apt-get update
apt-get install -y vim

curl -fsSL https://get.docker.com -o get-docker.sh

sh get-docker.sh

usermod -aG docker tim
