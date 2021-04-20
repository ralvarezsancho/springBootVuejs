FROM adoptopenjdk/openjdk11:jre-11.0.10_9-alpine@sha256:def864ee30f6657d781712ffbef162ce5b1aaeeb963e6faa1732de7e71287083

RUN mkdir -p /var/www/app
RUN addgroup --system javauser && adduser -S -s /bin/false -G javauser javauser
RUN chown -R javauser:javauser /var/www/app
WORKDIR /var/www/app

ARG JAR_FILE=target/springBootVuejs-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar

USER javauser
ENTRYPOINT ["java", "-jar", "app.jar"]