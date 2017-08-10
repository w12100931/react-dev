#
# React JS Basic Developing Environment
# Author: Jim Wu(Chung-Lin Wu)
# https://github.com/w12100931/react-dev
#

# Pull base image
FROM node:6.11.2-slim

MAINTAINER Chung-Lin Wu(w12100931@gmail.com)

# Install create-react-app
# Create a react template
# Install dependencies
# Install redux
RUN npm install -g create-react-app \
    && cd var \
	&& create-react-app my-app \
	&& cd my-app \
	&& npm install \
	&& npm install -save redux \
	&& npm install -save react-redux \

# Prepare app directory
WORKDIR /var/my-app

# Mount a volume
VOLUME /var/my-app

EXPOSE 3000
CMD [ "npm", "start" ]
