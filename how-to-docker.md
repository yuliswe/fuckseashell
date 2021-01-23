# How to Install and Use Docker for Software Development

Docker is an open platform for developing, shipping, and running applications.
If you are familiar with the concept of Virtual Machine and VirtualBox, but you
are unfamiliar with the concept of Docker container and Docker image, just know
that Docker serves a similar to a Virtual Machine but uses a different
technology, which uses less resources on your computer. A Docker image is
analogous to a Virtual Machine image, and a Docker container is analogous to a
Virtual Machine. If you still don't understand what I am talking about, it is
ok. Just follow the guide, because the concept is not important.

# Install Docker and Our fuckseashell Image

Steps:

1. Install Docker. Follow the offical guide here:
   https://docs.docker.com/get-docker/ to download and install Docker Desktop
   for your system.

2. After Docker Desktop is installed, download our fuckseashell docker-compose
   template directory, extract the zip file to somewhere you want to store your
   code to.

3. Next, download the `Ax-seashell.zip` file for the assignment from the CS136
   course website, and place the `Ax-seashell.zip` file in the `assignments`
   directory of

```
docker compose up -d
```


