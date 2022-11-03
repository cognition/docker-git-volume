FROM ubuntu:latest


LABEL MAINTAINER="Ramon Brooker <rbrooker@aeo3.io>"

## Set the env variable DEBIAN_FRONTEND to noninteractive
ENV DEBIAN_FRONTEND noninteractive

# Install git

RUN apt-get update && apt-get install -y locales && rm -rf /var/lib/apt/lists/* \
    && localedef -i en_CA -c -f UTF-8 -A /usr/share/locale/locale.alias en_CA.UTF-8
ENV LANG en_CA.utf8

RUN apt-get update && apt-get -y install git xfsprogs xfsdump lvm2 lvm2-dbusd


CMD ["/bin/bash"]

