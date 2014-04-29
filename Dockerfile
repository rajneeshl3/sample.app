FROM ec2-184-72-21-165.us-west-1.compute.amazonaws.com:5000/loyal3/base:1.0.9
MAINTAINER Matt Ho

#---------------------------------------------------------------------------
#
# WARNING: ORDER IS IMPORTANT - ADD NEW CONTENT TO THE BOTTOM!!!
#
#---------------------------------------------------------------------------

RUN apt-get update
RUN apt-get install -y nodejs

ADD . /app
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf
ADD startup/services.json /opt/config/startup/services.json
ADD version.json /opt/config/startup/version.json

EXPOSE 9615
EXPOSE 7946

CMD ["/usr/bin/supervisord"]


