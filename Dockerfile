FROM tomcat:9.0.41-jdk11
WORKDIR ./
COPY ./web.war /usr/local/tomcat/webapps/ROOT.war
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"] 
EXPOSE 8080
