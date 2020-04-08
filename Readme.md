# Docker / PHP / Nginx / MySQL
This is a docker-compose file for test .


## How to use
You need to have a Docker (docker >= 17.12.0+) setup (See Testing for a local setup) and install [docker-compose](https://docs.docker.com/compose/install/)


### Quick Start
Run these commands:
```
$ git clone git@github.com:saderi/lamp-docker.git
$ cd lamp-docker
```


Make sure your *docker.service* is up and running with `docker run hello-world` command 

Use ***make*** command to build images:
```
$ make build
```  

Copy your project file inside in **html** folder. and use command `make up` 


## Access to phpMyAdmin: 

Run phpmyadmin container with command `make phpmyadmin`

* **URL:** `http://localhost:8086`
* **Server:** mysql_server
* **Username:** root
* **Password:** root (as a default)

