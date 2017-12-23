#
# Apache2 Dockerfile in centos image
#

# Pull base image
FROM vinnycrm/centos

# Maintener
MAINTAINER Vinaya C R M <vinay@shrigowri.com>

# Install
RUN yum update -y && \
	yum install -y httpd && \
	yum clean all
	
# Copy config apache2
COPY conf/ /conf/

#ENTRYPOINT ["/bin/httpd"]
CMD ["-f", "/conf/httpd.conf"]

# Expose ports.
EXPOSE 80