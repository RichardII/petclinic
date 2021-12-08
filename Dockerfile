FROM tomcat:9.0.46

LABEL maintainer="catalina"

RUN mkdir -p /usr/local/tomcat/webapps/ROOT

COPY ./dist/petclinic/ /usr/local/tomcat/webapps/ROOT

EXPOSE 8080

CMD ["catalina.sh", "run"]








