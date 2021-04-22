FROM openjdk:11-jre-slim
VOLUME /tmp
ADD target/Spring5Boot2Docker-1.0-SNAPSHOT.jar app.jar
RUN bash -c 'touch /app.jar'
ENTRYPOINT ["java","-jar","/app.jar"]