FROM centos:latest

# Loosely based on wurstmeister containers

ENV STORM_VERSION 0.9.4
ENV JAVA_VERSION 1.8.0
ENV STORM_HOME /opt/apache-storm-${STORM_VERSION}

RUN yum install -y \
  java-${JAVA_VERSION}-openjdk-headless.x86_64 \
  wget \
  unzip

ENV JAVA_HOME /usr/lib/jvm/jre

RUN wget -q -O - http://mirrors.sonic.net/apache/storm/apache-storm-${STORM_VERSION}/apache-storm-${STORM_VERSION}.tar.gz | tar -xzf - -C /opt

RUN ln -s $STORM_HOME/bin/storm /usr/bin/storm

VOLUME /mnt/storm

ADD storm.yaml $STORM_HOME/conf/storm.yaml
