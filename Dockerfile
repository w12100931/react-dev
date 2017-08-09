#
# React JS Basic Developing Environment
# Author: Jim Wu(Chung-Lin Wu)
# https://github.com/w12100931/react-dev
#
#

# Pull base image

MAINTAINER Chung-Lin Wu(w12100931@gmail.com)

FROM node:6.11.2-slim

ARG user=react
ARG group=react
ARG uid=1000
ARG gid=1000

ENV APP_ROOT /my-app

# Install create-react-app
RUN npm install -g create-react-app

# Create a react template
RUN create-react-app my-app

# Install dependencies
RUN cd my-app
RUN npm install

# Install redux
RUN npm install -save redux
RUN npm install -save react-redux

# Prepare app directory
WORKDIR /my-app

# Mount a volume
RUN useradd -d "$APP_ROOT" -u ${uid} -g ${gid} -m -s /bin/bash ${user}

VOLUME $APP_ROOT

EXPOSE 3000

USER ${user}

CMD [ "npm", "start" ]
