FROM openjdk:8-jdk-alpine
ARG MAVEN_VERSION
COPY target/spring-petclinic-${MAVEN_VERSION}.jar app.jar
ENTRYPOINT ["java", "-jar", "/app.jar", " --spring.config.location=file:/application.properties,classpath:db/hsqldb/schema.sql,classpath:db/hsqldb/data.sql"]
