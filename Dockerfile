FROM openjdk:8-jre-alpine3.8

COPY target/*.jar app.jar

ENTRYPOINT ["java","-jar","/app.jar"]