FROM: centos:latest
MAINTAINER rgupta.rahulgupta@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
ADD https
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markups-kindle/* .
RUN rm -rf __MACOSX markups-kindle kindle.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
