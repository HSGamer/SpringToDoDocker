FROM eclipse-temurin:21 AS build
WORKDIR /app
COPY . .
RUN ./mvnw -DskipTests clean package

FROM tomcat:10.1-jdk21 AS run
COPY --from=build app/target/*.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]