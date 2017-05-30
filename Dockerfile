FROM openjdk:8-jre

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ADD target/dropwizard-rest-soap-1.0-SNAPSHOT.jar /usr/src/app/dropwizard-rest-soap-1.0-SNAPSHOT.jar
ADD dropwizard-rest-soap.yml /usr/src/app

EXPOSE 3002 8888

CMD ["java", "-jar", "-Done-jar.silent=true", "dropwizard-rest-soap-1.0-SNAPSHOT.jar", "server", "dropwizard-rest-soap.yml"]