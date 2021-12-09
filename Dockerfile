FROM karldocker25/tomcat

LABEL maintainer="catalina"

RUN mkdir -p /usr/local/tomcat/webapps/petclinic

ADD ./target/petclinic.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]








