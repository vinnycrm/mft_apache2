#
# Apache2 Dockerfile in centos image
#

# Pull base image
FROM vinnycrm/centos

# Maintener
MAINTAINER Vinaya C R M <vinay@shrigowri.com>


RUN yum -y --setopt=tsflags=nodocs update && \
    yum -y --setopt=tsflags=nodocs install httpd && \
    yum clean all

EXPOSE 80

# Simple startup script to avoid some issues observed with container restart
ADD run-httpd.sh /run-httpd.sh
RUN chmod -v +x /run-httpd.sh

CMD ["/run-httpd.sh"]