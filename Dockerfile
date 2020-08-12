FROM node:12-alpine
RUN mkdir /app
WORKDIR /app
RUN apk add git
CMD rm -rf /app/repo && git clone $REPOSITORY /app/repo && cd /app/repo && npm install && $START_COMMAND
