FROM justinrstout/git

MAINTAINER Justin R. Stout <justinrstout@justinrstout.com>

WORKDIR /opt/jenkins

COPY slave.jar .
