FROM maven:3-openjdk-11 as build
COPY pom.xml pom.xml
COPY src src
RUN mvn clean install



FROM openjdk:18-alpine3.13

COPY --from=build target/*.jar app.jar

ENTRYPOINT ["java","-jar","/app.jar"]