# https://hub.docker.com/r/picoded/ubuntu-openjdk-8-jdk/  Ubuntu LTS 16.04 
# See: https://hub.docker.com/r/picoded/ubuntu-base/Dockerfile
FROM ubuntu:16.04
ARG USER=docker
ARG UID=1000
ARG GID=1000
# default password for user
ARG PW=docker


# Add some core repos
RUN apt-get update
RUN apt-get install -y \
	sudo apt-utils apt-transport-https ca-certificates curl zip openssl \
	software-properties-common && \
	apt-get clean;


# See: https://hub.docker.com/r/picoded/ubuntu-openjdk-8-jdk/dockerfile/

# This is in accordance to : https://www.digitalocean.com/community/tutorials/how-to-install-java-with-apt-get-on-ubuntu-16-04
RUN apt-get install -y openjdk-8-jdk && \
	apt-get install -y ant && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* && \
	rm -rf /var/cache/oracle-jdk8-installer;
	
# Fix certificate issues, found as of 
# https://bugs.launchpad.net/ubuntu/+source/ca-certificates-java/+bug/983302
RUN apt-get install -y ca-certificates-java && \
	apt-get clean && \
	update-ca-certificates -f && \
	rm -rf /var/lib/apt/lists/* && \
	rm -rf /var/cache/oracle-jdk8-installer;

# Setup JAVA_HOME, this is useful for docker commandline
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
RUN export JAVA_HOME

# See: https://faun.pub/set-current-host-user-for-docker-container-4e521cef9ffc
# Option1: Using unencrypted password/ specifying password
RUN useradd -m ${USER} --uid=${UID} && echo "${USER}:${PW}" | \
      chpasswd

# Setup default user, when enter docker container
USER ${UID}:${GID}
WORKDIR /home/${USER}


COPY ./lighttable-0.8.1-linux.tar.gz ./lighttable-0.8.1-linux.tar.gz

RUN tar -xvf ./lighttable-0.8.1-linux.tar.gz

RUN rm ./lighttable-0.8.1-linux.tar.gz

RUN sudo apt -y install libgconf2-4




