#
# React JS Basic Developing Environment
# Author: Jim Wu(Chung-Lin Wu)
# https://github.com/w12100931/react-dev
#
#

# Pull base image
FROM node:6.11.2-slim

MAINTAINER Chung-Lin Wu(w12100931@gmail.com)

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

# add `/my-app/node_modules/.bin` to $PATH
ENV PATH /my-app/node_modules/.bin:$PATH

VOLUME /my-app

EXPOSE 3000
CMD [ "npm", "start" ]
