# ft_onion

ft_onion is a project where we learn how to create a website on the tor network.
Our server is running in a docker container.

## Installation

To Initialize everything build the docker image

```bash
docker build . 
```

## Usage

Run the container image using

```bash
docker run [container ID]
```

## Test case

To find the generated .onion address

```bash
#Go into the running container
docker exec -it [container ID] /bin/bash

#find the hostname file
cat /var/lib/tor/hidden_service/hostname
```
Open this address in Tor browser to access the hosted site.

## Warning

This project is only for educational purpose. This exercise is from the school 42 cybersecurity basic training project.