# dockerfile/ubuntu -> dockerfile/python -> dockerfile/nodejs
FROM node:latest
MAINTAINER Brian Sanchez <brian@rokk3rlabs.com>

# Get New Relic for Ubuntu
RUN echo deb http://apt.newrelic.com/debian/ newrelic non-free >> /etc/apt/sources.list.d/newrelic.list
RUN wget -O- https://download.newrelic.com/548C16BF.gpg | apt-key add -
RUN apt-get update
RUN apt-get install -qq newrelic-sysmond

# Define default command
CMD nrsysmond-config --set license_key=$NEWRELIC_KEY && /etc/init.d/newrelic-sysmond start