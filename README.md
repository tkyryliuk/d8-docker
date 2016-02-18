## Prepare your local machine
### Ubuntu 14.04, 15.10 instalation

1. Install docker and Docker compose.
1. Install dnsmasq (and forget about updating /etc/hosts).
```sudo apt-get install dnsmasq```
1. Edit dnsmasq config:
```sudo nano /etc/dnsmasq.conf```
1. Add folowing line at the and of the file:
```address=/loc.dev/127.0.0.1```
1. Run [nginx_proxy](https://hub.docker.com/r/jwilder/nginx-proxy/) container.
```docker run -d -p 80:80 -v /var/run/docker.sock:/tmp/docker.sock:ro jwilder/nginx-proxy```
1. Clone this repo to your local machine.
1. Change all occurrences of CHANGE_ME in docker-compose.yml and ssh.sh files.
1. cd to project directory.
1. Fire up:
```docker-compose up -d```
1. Site will be available on next addresses:
* http://change_me.loc.dev/
* http://mail.change_me.loc.dev/
* http://adminer.change_me.loc.dev/
