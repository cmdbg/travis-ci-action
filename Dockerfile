FROM node:14.17.3-alpine

LABEL "com.github.actions.name"="Travis CI"
LABEL "com.github.actions.description"="Invoke a build on Travis CI from custom repo"
LABEL "com.github.actions.icon"="activity"
LABEL "com.github.actions.color"="white"

LABEL "repository"="http://github.com/cmdbg/travis-ci-action"
LABEL "homepage"="http://travis-ci.com"
LABEL "maintainer"="Valentin Yanakiev <valentin@cmd.bg>"

COPY package*.json /
RUN cd / && npm install

ADD create-build.js /create-build.js
ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"] 