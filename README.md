## Prepare your local machine
### Ubuntu 14.04, 15.10 instalation

Install docker:
https://docs.docker.com/engine/installation/linux/ubuntulinux/

Make sure you did the "Create a Docker group" step so you can run docker without sudo. It will save a lot of time for you in future.
https://docs.docker.com/engine/installation/linux/ubuntulinux/#create-a-docker-group

Install dnsmasq (and forget about updating /etc/hosts)
sudo apt-get install dnsmasq

Edit dnsmasq config:
sudo nano /etc/dnsmasq.conf

Add folowing line at the and of the file:
address=/loc.dev/127.0.0.1
