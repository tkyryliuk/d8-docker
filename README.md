## Prepare your local machine
### Ubuntu 14.04, 15.10 instalation

1. Install docker
https://docs.docker.com/engine/installation/linux/ubuntulinux/

2. Make sure you did the [Create a Docker group](https://docs.docker.com/engine/installation/linux/ubuntulinux/#create-a-docker-group) step so you can run docker without sudo. It will save a lot of time for you in future.

3. Install [Docker compose](https://docs.docker.com/compose/install/).

3. Install dnsmasq (and forget about updating /etc/hosts)

    `sudo apt-get install dnsmasq`

4. Edit dnsmasq config:

    `sudo nano /etc/dnsmasq.conf`

5. Add folowing line at the and of the file:

    `address=/loc.dev/127.0.0.1`
6. Run [nginx_proxy](https://hub.docker.com/r/jwilder/nginx-proxy/) container. 
6. Clone this repo to your local machine.
7. Change all occurrences of CHANGE_ME in docker-compose.yml and ssh.sh files.
8. cd to project directory.
9. Fire up:

  `docker-compose up -d`

10. Site will be available on next addresses:
* http://change_me.loc.dev/
* http://mail.change_me.loc.dev/
* http://adminer.change_me.loc.dev/
