FROM centos
RUN apt update
RUN apt install httpd -y
COPY index.html /var/www/html/

CMD [/usr/sbin/httpd, -D, FOREGROUND]
EXPOSE 80 22
RUN systemctl restart httpd
