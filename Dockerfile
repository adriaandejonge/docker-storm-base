FROM centos:latest

# Loosely based on wurstmeister containers

ENV storm-version 0.9.4
ENV java-version 1.8.0
ENV STORM_HOME /opt/apache-storm-${storm-version}

RUN yum install -y \
  java-${java-version}-openjdk-headless.x86_64 \
  wget \
  unzip

ENV JAVA_HOME /usr/lib/jvm/jre

RUN wget -q -O - http://mirrors.sonic.net/apache/storm/apache-storm-${storm-version}/apache-storm-${storm-version}.tar.gz | tar -xzf - -C /opt

RUN ln -s $STORM_HOME/bin/storm /usr/bin/storm

ADD storm.yaml $STORM_HOME/conf/storm.yaml
#ADD cluster.xml $STORM_HOME/logback/cluster.xml
