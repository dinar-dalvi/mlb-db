#
# Dockerfile to create  mlb image
#
# 
#

# Pull base image.
FROM docker.io/library/node:0.10
MAINTAINER Dinar Dalvi 

USER root
RUN mkdir -p /opt/src
COPY /src/. /opt/src/

RUN chmod +x /opt/src/run-mlb.sh
RUN chmod 755 /opt/src/run-mlb.sh


# Expose the http port
EXPOSE 80


#ENTRYPOINT ["/opt/src/run-mlb.sh"]
CMD ["bash"]
