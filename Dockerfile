FROM karldocker25/tomcat:9.0.46

LABEL maintainer="catalina"

RUN mkdir -p /usr/local/tomcat/webapps/petclinic

COPY ./target/petclinic/ /usr/local/tomcat/webapps/ROOT/

COPY ./target/petclinic.war /usr/local/tomcat/webapps/petclinic.war

EXPOSE 8080

CMD ["catalina.sh", "run"]








