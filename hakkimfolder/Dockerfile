# Maven 
#FROM maven:3.8.1-openjdk-11-slim 
FROM hakkimimage as builder
#AS builder
WORKDIR /app
#COPY pom.xml .
#RUN mvn -e -B dependency:resolve
COPY src ./src
RUN mvn clean -e -B package
 
# RTSDK Java
#FROM openjdk:11-jre-slim-buster
#WORKDIR /app
#COPY --from=builder /app/target/dineshfolder.war .
#COPY run.sh ./run.sh #comment the COPY command
#ENTRYPOINT ["java", "-jar", "./dineshfolder.war"]
FROM tomcat
WORKDIR /usr/local/tomcat/webapps
COPY --from=builder /app/target/*.war .


