# Use a minimal image as parent
FROM openjdk:8-jdk-alpine

# Environment variables
ENV TOMCAT_MAJOR=8 \
    TOMCAT_VERSION=8.5.37 \
    CATALINA_HOME=/opt/tomcat