
# Pull base image
FROM resin/rpi-raspbian:jessie
MAINTAINER Andreas Kuhtz <andreas.kuhtz@gmail.com>

# Install dependencies
RUN echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu zesty main" | tee -a /etc/apt/sources.list
RUN echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu zesty main" | tee -a /etc/apt/sources.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C2518248EEA14886 && apt-get update
RUN echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
RUN apt-get install -y oracle-java8-installer

# Define working directory
WORKDIR /data

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

