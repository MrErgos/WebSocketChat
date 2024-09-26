#
# Build stage
#
FROM maven:3.8.3-openjdk-17 AS build
COPY . .
RUN mvn clean package -Pprod -DskipTests
#
# Package stage
#
FROM openjdk:17-jdk-alpine
COPY --from=build /target/WebSocketChat-1.jar WebSocketChat-1.jar
# ENV PORT=8080
EXPOSE 8080
ENTRYPOINT ["java","-jar","WebSocketChat-1.jar"]