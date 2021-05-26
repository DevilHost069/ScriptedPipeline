FROM centos:latest
MAINTAINER bhuwanchy069@gmail.com
RUN yum -y install httpd \
  zip \
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page262/cron.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip cron.zip
RUN cp -rvf cron/* .
RUN rm -rf cron cron.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
  
