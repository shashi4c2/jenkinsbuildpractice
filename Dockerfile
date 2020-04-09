FROM tomcat:8
LABEL author=shashi
ADD https://shashikiran.s3-us-west-2.amazonaws.com/gameoflife/gameoflife.war &&  /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["catalina.sh", "run"]
