# Pull base image 
From tomcat:8-jre8 

# Maintainer 
MAINTAINER "lndassi@gmail.com" 
COPY ./webapp/target/seasons.war /usr/local/tomcat/webapps
