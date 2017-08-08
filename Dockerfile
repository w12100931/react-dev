#
# React JS Basic Developing Environment
# Author: Jim Wu(Chung-Lin Wu)
# https://github.com/w12100931/react-dev
#
#

# Pull base image
FROM node:6.11.2-slim

MAINTAINER Chung-Lin Wu

# Install create-react-app
RUN npm install -g create-react-app

# Create a react template
RUN create-react-app my-app

# Prepare app directory
WORKDIR /my-app

# add `/my-app/node_modules/.bin` to $PATH
ENV PATH /my-app/node_modules/.bin:$PATH


ADD . /my-app

EXPOSE 3000
CMD [ "npm", "start" ]
