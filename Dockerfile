FROM node:9-alpine
MAINTAINER Wojciech Żurek <mail@wojciechzurek.eu>

ENV NEWMAN_VERSION 3.9.3

RUN npm install -g newman@${NEWMAN_VERSION};

WORKDIR /work

CMD ["newman", "--version"]
