# FROM openjdk:8-jre-alpine
FROM eclipse-temurin:26_35-jre

EXPOSE 8080

COPY ./build/libs/java-app-1.0.0.jar /usr/app/
# COPY ./build/libs/*.jar /usr/app/app.jar
WORKDIR /usr/app

ENTRYPOINT ["java", "-jar", "java-app-1.0.0.jar"]