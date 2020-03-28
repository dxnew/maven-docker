FROM maven:3.6.3-jdk-11-openj9 as build

ARG ARTIFACT_VERSION=0.1
ARG ENVIRONMENT
ARG BROWSER


ARG MAVEN_OPTS

WORKDIR /workspace/

COPY maven_docker_base maven_docker_base
COPY maven_docker_test maven_docker_test
COPY pom.xml .
COPY src src

RUN mvn -q integration-test -PmyTest