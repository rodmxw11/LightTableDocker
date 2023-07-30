
Docker setup;


https://askubuntu.com/questions/1161646/is-it-possible-to-run-docker-container-and-show-its-graphical-application-window
docker run -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --user="$(id --user):$(id --group)" ubuntu:xclock  # !!!!!!!!!!!!!!!! Worked !!!!!!!!!!!

https://www.techrepublic.com/article/deploy-docker-container-ssh-access/
https://askubuntu.com/questions/213678/how-to-install-x11-xorg

docker run -it ubuntu:16.04

apt-get update

nano xauth xorg openbox ssh openssh-server net-tools

echo 'root:pw' | chpasswd
service ssh restart


========================================================================


https://askubuntu.com/questions/1161646/is-it-possible-to-run-docker-container-and-show-its-graphical-application-window
docker run -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --user="$(id --user):$(id --group)" ubuntu:xclock

docker run -it -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --user="$(id --user):$(id --group)" ubuntu:16.04


docker run -it -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix  ubuntu:16.04
apt-get update
apt-get install -y sudo
apt-get install -y x11-apps

echo 'root:pw' | chpasswd
groupadd -g 1000 rodney
adduser --system --no-create-home --uid 1000 --gid 1000 rodney

