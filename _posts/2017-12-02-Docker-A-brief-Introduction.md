---
title: Docker - A brief introduction
subtitle: Perfect tool for multi platform users
image: /img/docker.png
share-img: /img/docker.png
tag: [application]
---

#### What is Docker?  
Docker is a tool designed to make it easier to create, deploy, and run applications by using containers. Containers allow a developer to package up an application with all of the parts it needs, such as libraries and other dependencies, and ship it all out as one package. By doing so, thanks to the container, the developer can rest assured that the application will run on any other Linux machine regardless of any customized settings that machine might have that could differ from the machine used for writing and testing the code.

#### Why do I use Docker?  
The prime most reason of using docker is portability of application which I use everyday life such as Jekyll. Since I use different Linux distributions across machines from my place to office I could find docker would be the perfect solution for creating instant environment which my application needs. And it is completely different from conventional virtual machines, as you can see here.

![dockervsvm](/img/dockervsvm.png)

I use virtual machines but not for specific needs like website designing and distribution related terminal testing. When you switch to Docker from conventional virtual machines, you could free up considerable amount of  machine resources as well.

#### How to install Docker?  
Docker installation is well-described in the Docker [documentation](https://docs.docker.com/engine/installation/) page for any operating system which you are using. I always recommend you to install Docker from official website instead of installing from your Linux-distribution-repository or other - a good practice of installation.

#### How to start using Docker  
Now you are installed Docker and let's start using it. Here, I'm not going to go through the Docker tutorials which you could find easily from Docker official website, instead, I give you a brief of how does Docker useful to me.

I use Jekyll and have encountered many dependency issues. The beauty of Docker is that we can run a specific application inside a fully configured docker container and carry that container to anywhere to run the same. That is, we are able to move the whole setup and run the application out of it regardless of what operation systems we are using. Since then I started using Docker I haven't cared about the application configurations. It would give the productive environment for whatever we work with.

<b>Useful commands to remember: </b>
``` bash
docker run -ti container-name/tag
# example: docker run -ti ubuntu:16.04
# create a ubuntu 16.04 image and run that container

docker -exec -ti container-name/tag command
# example: docker -exec -ti /bin/bash
# run specific command

docker container ls --all
# list all installed docker containers

docker images -a
# list all installed docker images

docker rmi image-name
# example: docker rmi ubuntu:16.04
# remove docker image

docker container rm container-id
# example: docker conatainer rm 0fd2ff7b757a
# remove docker container

docker commit container-id image-name
# example docker commit ff4d9939e45c ubuntu:custom
# create custom docker image

docker inspect container-name
# example: docker inspect ubuntu:16.04
# shows running docker container description

docker ps
# shows docker process

docker build -t image-name
# example: docker build -t jekyll:xenial .
# build image from Dockerfile

docker pull image-name:tag
# example docker pull base/archlinux:latest
# pulls docker image from Docker Hub

docker push images-name:tag
# example: docker push ubuntu:custom
# pushes docker image to Docker Hub

```

<b>Docker Image vs Container</b>

![dockerarch](/img/dockerarch.png)

The major difference between a container and an image is the top writable layer. All writes to the container that add new or modify existing data are stored in this writable layer. When the container is deleted, the writable layer is also deleted. The underlying image remains unchanged.

<b>Dockerfile vs docker-compose</b>
![dockerfile](/img/dockerfile.jpg)

Simple example of Dockerfile
```
FROM ubuntu:16.04
RUN apt-get update && apt-get apt-utils
RUN apt-get update && apt-get install -y gem make gcc ruby ruby-dev vim git
RUN gem install jekyll jekyll-paginate
MAINTAINER kevy
```
![dockerup](/img/dockerup.jpg)

Simple example of docker-compose.yml
```
version: "2"
services:
        jekyll:
                image: jekyll:xenial
                container_name: jekyll
                ports:
                        - "4000:4000"
                volumes:
                        - "$PWD:/home"
                command: "jekyll serve --host=0.0.0.0 --source=/home --incremental --watch"
```

### Conclusion
I'm well aware of that this post is not a zero to hero Docker information but this would make you start thinking about how Docker useful for you.  
Thank you for reading.
