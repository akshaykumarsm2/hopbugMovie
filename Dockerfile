
FROM java:8-jdk-alpine

# copy the source tree and the pom.xml to our container
COPY ./build/libs/target/demo-0.0.1-SNAPSHOT.jar /usr/app/

WORKDIR /usr/app

EXPOSE 8080

# set the startup command to execute the jar
ENTRYPOINT ["java", "-jar", "target/demo-0.0.1-SNAPSHOT.jar"]
