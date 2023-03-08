# uses a platform argument to specify base image
FROM --platform=linux/amd64 ubuntu:22.04

LABEL author="souradeep-scs" 
LABEL email="soura@iastate.edu"
LABEL version="v1.0"
LABEL description="COWSAY MOO!"
LABEL date_created="2023-03-07"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y fortune cowsay lolcat

ENV PATH=/usr/games:${PATH}

ENV LC_ALL=C

ENTRYPOINT fortune | cowsay | lolcat
