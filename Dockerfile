FROM maven:3.6.3-jdk-11-openj9 as build

ARG ENVIRONMENT
ENV ENVIRONMENT=${ENVIRONMENT}

ARG MAVEN_OPTS

WORKDIR /workspace/

COPY maven_docker_base maven_docker_base
COPY maven_docker_test maven_docker_test
COPY pom.xml .

RUN mvn -q integration-test -PmyTest -Prun-on-${ENVIRONMENT}