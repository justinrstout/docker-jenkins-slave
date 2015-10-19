FROM justinrstout/oracle-jdk

MAINTAINER Justin R. Stout <justinrstout@justinrstout.com>

RUN yum install git -y
RUN yum clean all

WORKDIR /tmp/gradle

COPY gradle ./gradle
COPY gradlew ./

RUN chmod 777 gradlew

RUN ./gradlew

RUN rm -rf /tmp/gradle

COPY slave.jar .
