FROM eclipse-temurin:21-jre-ubi10-minimal
USER root
RUN microdnf install -y curl-minimal && microdnf clean all
EXPOSE 9080
ADD target/spring-boot-2-jsonb-0.0.1-SNAPSHOT.jar /app/app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Dspring.profiles.active=container", "-jar", "/app/app.jar"]
