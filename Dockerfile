FROM openjdk:17-alpine AS jre-build

WORKDIR /usr/app/
COPY ./target/websocket-maven-0.0.1-SNAPSHOT.jar ./websocket-maven.jar

ENTRYPOINT exec java -jar websocket-maven.jar
