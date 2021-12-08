FROM tomcat:9.0.46

LABEL maintainer="catalina"

RUN mkdir -p /usr/local/tomcat/webapps/petclinic

ADD ./dist/petclinic/ /usr/local/tomcat/webapps/petclinic

EXPOSE 8080

CMD ["catalina.sh", "run"]








