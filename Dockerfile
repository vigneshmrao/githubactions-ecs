FROM ubuntu
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install apache2 -y
RUN apt-get install apache2-utils -y
RUN apt-get clean
EXPOSE 80
RUN echo "Deploying to Amazon Elastic Container Service
as part of your continuous deployment (CD) workflows." > /var/www/html/index.html
CMD ["apache2ctl","-D","FOREGROUND"]
