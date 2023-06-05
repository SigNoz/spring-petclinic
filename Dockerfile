FROM openjdk:11

WORKDIR /app

ADD https://github.com/open-telemetry/opentelemetry-java-instrumentation/releases/latest/download/opentelemetry-javaagent.jar /app/opentelemetry-javaagent.jar

COPY target/spring-petclinic-2.4.5.jar /app/spring-petclinic-2.4.5.jar

EXPOSE 8080

CMD ["java", "-javaagent:/app/opentelemetry-javaagent.jar", "-jar", "spring-petclinic-2.4.5.jar"]
