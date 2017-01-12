FROM frolvlad/alpine-oraclejdk8:full
EXPOSE 8080
VOLUME /tmp
ADD barbershop-0.0.1-SNAPSHOT.war app.war
RUN sh -c 'touch /app.war'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.war" ]