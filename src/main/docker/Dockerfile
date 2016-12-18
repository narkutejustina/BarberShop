FROM java:8
EXPOSE 8080
VOLUME /tmp
ADD barbershop-0.0.1-SNAPSHOT.war app.war
RUN bash -c 'touch /app.war'
ENTRYPOINT ["java","-jar","/app.war"]
