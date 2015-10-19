FROM justinrstout/oracle-jdk

MAINTAINER Justin R. Stout <justinrstout@justinrstout.com>

# Git
RUN yum install git -y
RUN yum clean all

# Gradle
WORKDIR /tmp/gradle

COPY gradle ./gradle
COPY gradlew ./

RUN chmod 777 gradlew
RUN ./gradlew

WORKDIR /

RUN rm -rf /tmp/gradle

# Jenkins
COPY slave.jar .
