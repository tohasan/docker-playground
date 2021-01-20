# Docker Playground

It is a project to play with Docker. 

# Handy commands to work with Docker

-- Authorize
docker login -u docker -p MyOwNdOcKeRpAsS hub.veeroute.com
-- Clean up outdated images
docker system prune

-- Jump into a container
docker exec -it <container_name> bash

-- List all the containers including stopped
docker ps -a

-- List of containers running containers
docker ps
docker ps --format "{{.Names}}"

-- List stopped containers
docker ps --filter "status=exited"

-- Check out logs of a container
docker logs -f <container_name>
docker logs --follow <container_name>

-- Copy a file to a container
docker cp c:\path\to\local\file container_name:/path/to/target/dir/

-- Restart a container
docker restart <container_name>

-- Replace a container
1. docker pull  hub.veeroute.com/geoserver:<your_tag_name>
2. docker-compose stop geoserver
3. docker-compose up -d geoserver

-- Use a container built on another tag

docker pull hub.veeroute.com/workspace-web:dev1
docker tag hub.veeroute.com:workspace-web:dev1 hub.veeroute.com/workspace-web:web1
docker push hub.veeroute.com/workspace-web:web1

-- Run a container with exposed port and specific name of the container
docker run -p 8080:80 --name playground docker-playground

-- Run a container in detached mode
docker run -p 8080:80 --name playground -d docker-playground

-- Go to a stopped container
docker run -it --entrypoint=/bin/bash hub.veeroute.com/workspace-facade:web4

# General useful Ubuntu commands

-- Check the version of the core of OS 
uname -a
-- Check the version of OS
$ lsb_release -a
No LSB modules are available.
Distributor ID: Ubuntu
Description:    Ubuntu Saucy Salamander (development branch)
Release:    13.10
Codename:   saucy

$ cat /etc/lsb-release 
DISTRIB_ID=Ubuntu
DISTRIB_RELEASE=13.10
DISTRIB_CODENAME=saucy
DISTRIB_DESCRIPTION="Ubuntu Saucy Salamander (development branch)"

$ cat /etc/issue.net
Ubuntu Saucy Salamander (development branch)

$ cat /etc/debian_version 
wheezy/sid
