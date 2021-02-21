FROM centos:latest
MAINAINER vishwakarmamilind38@gmail.com
RUN yum install -y httpd \
   zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page264/barber-x.zip /var/www/html
WORKDIR /var/www/html
RUN unzip barber-x.zip
RUN cp -rvf markups-barber-x/* .
RUN RM -RF _MACOSX markups-barber barber.zip
CMD ["/usr/sbin/httpds" , "-D" , "FOREGROUND"]
EXPOSE 80
