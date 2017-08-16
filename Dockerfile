#
# React JS Basic Development Environment
# Author: Jim Wu(Chung-Lin Wu)
# https://github.com/w12100931/react-dev
#

# Pull base image
FROM node:latest

MAINTAINER Chung-Lin Wu(w12100931@gmail.com)

RUN groupadd -r pub-user \
  && useradd -m -r -g pub-user pub-user
  
USER pub-user

# Install create-react-app and redux
RUN npm install -g create-react-app \
  && cd /usr/src \
  && create-react-app my-app \
  && cd my-app \
  && npm install \
  && npm install redux --save \
  && npm install react-redux --save \
  && usermod -u 1001 pub-user \
  && chown -Rf pub-user.pub-user /usr/src/my-app \
  && chmod +x /usr/src/my-app

# Prepare app directory
WORKDIR /usr/src/my-app

# Mount a volume
VOLUME /usr/src

EXPOSE 3000
CMD [ "npm", "start" ]
