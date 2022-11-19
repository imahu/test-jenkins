# Docker Build Stage
FROM maven:3-jdk-11 AS build


# Build Stage
WORKDIR /opt/app

COPY ./ /opt/app
RUN mvn clean install -DskipTests


# Docker Build Stage
FROM openjdk:11

COPY --from=build /opt/app/target/*.jar app.jar

ENV PORT 3277
EXPOSE $PORT

ENTRYPOINT ["java","-jar","-Xmx1024M","-Dserver.port=${PORT}","app.jar"]
