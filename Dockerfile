FROM ubuntu
MAINTAINER Matt Ho

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y supervisor nodejs

ADD . /app
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 9615

CMD ["/usr/bin/supervisord"]


