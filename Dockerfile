# ubuntu base
FROM ubuntu:latest

# install apache
RUN apt-get -yqq update
RUN apt-get -yqq install apache2
RUN apt-get -yqq install iputils-ping


CMD [ "sudo cp /etc/var/html/index.html /etc/var/html/index.html.bak" ]
CMD [ "sudo cp index.html /etc/var/html" ]

# expose port
EXPOSE 8080

# start app
CMD [ "sudo /etc/init.d/apache2 restart" ]