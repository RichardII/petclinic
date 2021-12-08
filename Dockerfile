FROM tomcat:9.0.46

LABEL maintainer="catalina"

RUN mkdir -p /usr/local/tomcat/webapps/petclinic

COPY ./dist/petclinic.war /usr/local/tomcat/webapps/petclinic.war

EXPOSE 8080

CMD ["catalina.sh", "run"]








