FROM eclipse-temurin:17-jdk-alpine
VOLUME /tmp
EXPOSE 5050
ARG JAR_FILE=target/service-discovery-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar
COPY start_with_delay.sh /start_with_delay.sh
RUN chmod +x /start_with_delay.sh
ENTRYPOINT ["/start_with_delay.sh", "0"]
