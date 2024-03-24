# ns3-docker
## Table of content
- [Introduction](#Introduction)
- [Usage](#Usage)
## Introduction
This is ns3 Dockerfile use for build an image of ns3 then run it as container
## Usage
---
1. Install [git](https://git-scm.com) 
2. Follow [this document](https://docs.docker.com/engine/install/) to install docker engine and turn it on using systemd
```sh
systemctl enable docker
```
3. Clone this repository using command
```sh
git clone https://github.com/bhhoang/ns3-docker
```
then change directory to the cloned directory
```sh
cd ns3-docker
```
In case you are new to docker and not using docker desktop which is trash, here are some guide for this
4. Build the image using the Docker file. If this success, run ONCE only!
```sh
sudo docker build -t nanika/ns3 .
```
and wait for the build
5. The container can be created using the command. If this success, run ONCE only!
```sh
sudo docker run -it --name NETSIM nanika/ns3
```
Container can be started using the command, remmeber every time you want to access the container, you have to follow all the commands below:
```sh
sudo docker container start NETSIM
```
And can be accessed to the terminal using
```sh
sudo docker exec -it NETSIM bash
```
With NETSIM being your desire name for the container.
## P/S
---
Feel free to ask!
