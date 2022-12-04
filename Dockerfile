FROM devopsedu/webapp
COPY website/. /var/www/html
RUN echo "ServerName localhost:80" >> /etc/apache2/apache2.conf
RUN sed -i "s/DirectoryIndex index.html index.cgi index.pl index.php index.xhtml index.htm/DirectoryIndex index.php/g" /etc/apache2/mods-available/dir.conf
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
EXPOSE 80