Docker local dev environment for Drupal
===================

### Ubuntu 14.04, 15.04, 15.10 installation
-------------
### 1. Prepare your local machine.
* Install docker and Docker compose.
* Install dnsmasq
```
sudo apt-get install dnsmasq
```

Dnsmasq is  a local DNS server which will route all addresses like http://example.loc to your local machine, without any changes to /etc/hosts 

* Edit dnsmasq config:
```
sudo nano /etc/dnsmasq.conf
```
* Add following line at the end of the file:
```
address=/loc/127.0.0.1
```
* Restart dnsmasq
```
sudo service dnsmasq restart
```
* Run nginx_proxy container.
```
docker run -d -p 80:80 -v /var/run/docker.sock:/tmp/docker.sock:ro jwilder/nginx-proxy
```
It’s a special docker container with Nginx reverse proxy, which will be exposed on 80 port  and will redirect all incoming requests to other docker containers inside you machine. Read more on its page.

----------

### 2. Start new project.
* Clone this repo to your local machine.
* Change all occurrences of `CHANGE_ME` in `docker-compose.yml` and `ssh.sh` files.

This needs to be done because all your containers must have a namespace. 
And you should be able to find any of them in list in future. So project name would be good for this.

* `cd` to project directory.
* Fire up:
``
docker-compose up -d
``

`-d` flag here means daemonize mode, you can skip this and will see what happens under the hood.

By default docker compose get all configuration from `docker-compose.yml` file and create all containers defined there.

### Usage
-------------

Site will be available on next addresses:

http://change_me.loc

http://mail.change_me.loc

http://adminer.change_me.loc
