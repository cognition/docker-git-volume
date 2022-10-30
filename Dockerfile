FROM ubuntu


LABEL MAINTAINER="Ramon Brooker <rbrooker@aetherealmind.com>"

## Set the env variable DEBIAN_FRONTEND to noninteractive
ENV DEBIAN_FRONTEND noninteractive

# Install git
RUN apt-get update && apt-get -y install git


CMD ["/bin/bash"]

