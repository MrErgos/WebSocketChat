
FROM openjdk:17-jdk-alpine

WORKDIR /app


COPY target/WebSocketChat-1.jar /app/app.jar


ENTRYPOINT ["java", "-jar", "/app/app.jar"]


EXPOSE 8080
