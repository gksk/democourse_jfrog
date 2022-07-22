
FROM ubuntu:latest
#
#Identify the maintainer of an image
LABEL maintainer="testgk12x@gmail.com"
#
# Update the image to the latest packages
RUN apt-get update && apt-get upgrade -y
#
RUN cat /etc/resolv.conf

RUN echo  " "

#install httpd 
RUN apt-get install httpd -y

# configure
RUN echo "Jenkins Docker Build and Publish " > /var/www/html/index.html



CMD ["sh", "-c", "tail -f /dev/null"]

CMD ["/usr/sbin/httpd","-D","FOREGROUND"]


EXPOSE 80