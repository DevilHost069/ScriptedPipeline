FROM centos:latest
MAINTAINER bhuwanchy069@gmail.com
RUN yum -y install httpd \
  zip \
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page267/yooga.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip yooga.zip
RUN cp -rvf yooga/* .
RUN rm -rf yooga yooga.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
  
