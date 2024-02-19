#FROM node:16-alpine
#RUN apk add -U git curl

FROM node:16-alpine
USER root
VOLUME /var/run/docker.sock:/var/run/docker.sock
RUN groupadd -g 1111 docker && gpasswd -a jenkins-agent-1 docker
RUN getent group docker
USER jenkins-agent-1
