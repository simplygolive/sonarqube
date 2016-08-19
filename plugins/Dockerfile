FROM alpine:3.4
MAINTAINER Peter Mounce

RUN apk --no-cache add --repository http://dl-cdn.alpinelinux.org/alpine/edge/community wget ca-certificates

WORKDIR /opt/download

COPY ./*.jar /opt/download/

VOLUME /opt/sonarqube

# Since we are using a volume which is bound at runtime we need to copy the plugins at runtime to their final location
CMD cp -R /opt/download/* /opt/sonarqube/extensions/plugins
