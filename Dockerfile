#  ORIGINAL
# ##########################################################
# FROM tomcat:9.0-jdk17-temurin

# COPY . /app
# WORKDIR /app
# RUN ./mvnw package -DskipTests

# RUN cp /app/target/*.war /usr/local/tomcat/webapps/ROOT.war
# CMD ["catalina.sh","run"]
###########################################################


# test
# ##########################################################

#this version DID NOT WORK
#FROM tomcat:9.0-jdk17-temurin

#I HAVE UPDATED TO THIS VERSION
FROM tomcat:jdk17-temurin


RUN echo "hello there"

COPY . /app
WORKDIR /app
RUN ./mvnw package -DskipTests

#RUN cp /app/target/*.war /usr/local/tomcat/webapps/ROOT.war
RUN cp /app/target/dockerForJavaDevs-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh","run"]

# ##########################################################
#FROM eclipse-temurin:17-jdk-focal
#WORKDIR /app

#COPY .mvn/ .mvn
#COPY mvnw pom.xml ./
#RUN ./mvnw dependency:go-offline

#COPY src ./src

#CMD ["./mvnw", "spring-boot:run"]