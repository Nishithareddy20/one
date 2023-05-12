FROM centos:7
WORKDIR /app
RUN yum -y update
RUN yum -y install wget
RUN wget https://downloads.apache.org/httpd/httpd-2.4.57.tar.gz
RUN tar -xzf httpd-2.4.57.tar.gz
RUN rm httpd-2.4.57.tar.gz
RUN yum -y install httpd
COPY . .
EXPOSE 4000
CMD ["httpd", "-DFOREGROUND"]
