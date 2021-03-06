FROM openjdk:8-alpine
VOLUME /tmp
ADD /target/*.jar /app.jar
RUN sh -c 'touch /app.jar'
EXPOSE 80
ENTRYPOINT ["java","-server","-Dfile.encoding=utf-8","-Duser.language=en","-Duser.country=US","-Xmx1G","-XX:+UseCompressedOops","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
