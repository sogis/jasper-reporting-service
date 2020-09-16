# Jasper reports service
FROM sourcepole/qwc-uwsgi-base:alpine-latest

# Required for downloading jasper-reporting-service.jar
RUN apk add --no-cache --update wget
# Required for the service to run
RUN apk add --no-cache --update openjdk8 ttf-dejavu

RUN mkdir -p /srv/jasper-reporting-service/config

WORKDIR /srv/jasper-reporting-service

#RUN wget -O jasper-reporting-service.jar --header="PRIVATE-TOKEN: $AUTH_TOKEN" "$JASPER_SERVICE_URL"
COPY jasper-reporting-service/target/jasper-reporting-service-*.jar jasper-reporting-service.jar

# Run service
ENTRYPOINT ["java", "-DJava.awt.headless=true", "-jar", "jasper-reporting-service.jar"]
