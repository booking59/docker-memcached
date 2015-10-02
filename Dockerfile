FROM centos:latest

MAINTAINER Kamel Ouzouigh <https://github.com/jeteokeeffe/docker-memcached>

# Install memcached
RUN yum update -y
RUN yum install -y memcached 

# Port to expose 
EXPOSE 11211

# Service to run
CMD /usr/bin/memcached -d -p 11211 -u memcached -m 64 -c 1024 
