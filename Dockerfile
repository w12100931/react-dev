#
# React JS Basic Developing Environment
# Author: Jim Wu(Chung-Lin Wu)
# https://github.com/w12100931/react-dev
#
#

# Pull base image
FROM node:6.11.2-slim

MAINTAINER Chung-Lin Wu

# Prepare app directory
RUN mkdir -p /src
WORKDIR /src

# add `/src/node_modules/.bin` to $PATH
ENV PATH /src/node_modules/.bin:$PATH

# Install dependencies
COPY package.json /src
RUN npm install --silent

ADD . /src

EXPOSE 3000
CMD [ "npm", "start" ]
