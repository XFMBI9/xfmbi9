# Farkas Mark / xfmbi9 httpd container
FROM registry.redhat.io/ubi7/ubi:7.6
LABEL description="XFMBI9 custom httpd container"
MAINTAINER Farkas Mark <markfarkas9810@gmail.com>
RUN yum install -y httpd && yum clean all
EXPOSE 443
RUN systemctl enable httpd
ENV LogLevel "info"
ADD https://raw.githubusercontent.com/XFMBI9/xfmbi9/main/index.html /var/www/html/index.html
ADD https://raw.githubusercontent.com/XFMBI9/xfmbi9/main/1.png var/www/html/1.png
ADD https://raw.githubusercontent.com/XFMBI9/xfmbi9/main/2.png var/www/html/2.png
ADD https://raw.githubusercontent.com/XFMBI9/xfmbi9/main/3.png var/www/html/3.png
ADD https://raw.githubusercontent.com/XFMBI9/xfmbi9/main/4.png var/www/html/4.png
ADD https://raw.githubusercontent.com/XFMBI9/xfmbi9/main/5.png var/www/html/5.png
ADD https://raw.githubusercontent.com/XFMBI9/xfmbi9/main/6.png var/www/html/6.png
ADD https://raw.githubusercontent.com/XFMBI9/xfmbi9/main/7.png var/www/html/7.png
ADD https://raw.githubusercontent.com/XFMBI9/xfmbi9/main/8.png var/www/html/8.png
ADD https://raw.githubusercontent.com/XFMBI9/xfmbi9/main/9.png var/www/html/9.png
ADD https://raw.githubusercontent.com/XFMBI9/xfmbi9/main/10.png var/www/html/10.png
ADD https://raw.githubusercontent.com/XFMBI9/xfmbi9/main/11.png var/www/html/11.png
ADD https://raw.githubusercontent.com/XFMBI9/xfmbi9/main/12.png var/www/html/12.png
ADD https://raw.githubusercontent.com/XFMBI9/xfmbi9/main/13.png var/www/html/13.png
ADD https://raw.githubusercontent.com/XFMBI9/xfmbi9/main/14.png var/www/html/14.png
ADD https://raw.githubusercontent.com/XFMBI9/xfmbi9/main/15.png var/www/html/15.png
ADD https://raw.githubusercontent.com/XFMBI9/xfmbi9/main/16.png var/www/html/16.png
ADD https://raw.githubusercontent.com/XFMBI9/xfmbi9/main/17.png var/www/html/17.png
ADD https://raw.githubusercontent.com/XFMBI9/xfmbi9/main/18.png var/www/html/18.png
ADD https://raw.githubusercontent.com/XFMBI9/xfmbi9/main/19.png var/www/html/19.png
ADD https://raw.githubusercontent.com/XFMBI9/xfmbi9/main/20.png var/www/html/20.png
RUN chmod 755 -R /var/www/html/ && echo "Listen 443 https" >> /etc/httpd/conf/httpd.conf
ENTRYPOINT ["/usr/sbin/httpd"]
CMD ["-DFOREGROUND"]
