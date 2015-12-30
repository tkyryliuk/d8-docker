
Steps to launch local drupal development:

### Install docker

`wget -qO- https://get.docker.com/ | sh`

### Check that everything is ok
`docker -D info`

You should see something like this:

    Containers: 12
    Images: 341
    Server Version: 1.9.1
    Storage Driver: aufs
    Root Dir: /var/lib/docker/aufs
    Backing Filesystem: extfs
    Dirs: 365
    Dirperm1 Supported: true
    Execution Driver: native-0.2
    Logging Driver: json-file
    Kernel Version: 3.19.0-42-generic
    Operating System: Ubuntu 15.04
    CPUs: 4
    Total Memory: 15.61 GiB
    Name: my-desktop
    ID: 
    WARNING: No swap limit support
    
### Install docker-compose
`curl -L https://github.com/docker/compose/releases/download/1.5.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose`

Instructions for other versions see here: https://github.com/docker/compose/releases

Apply executable permissions to the binary:

    chmod +x /usr/local/bin/docker-compose

Check instalation:

    docker-compose --version

### Launch local drupal environment
cd to directory with this repo, run:

`docker-compose -d`

### Enter your web container
`docker exec -it drupal-project_web bash`

Go to `/var/www` folder to work with your site.
