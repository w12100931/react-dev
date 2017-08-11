#
# React JS Basic Development Environment
# Author: Jim Wu(Chung-Lin Wu)
# https://github.com/w12100931/react-dev
#

# Pull base image
FROM node:6.11.2-slim

MAINTAINER Chung-Lin Wu(w12100931@gmail.com)

# Install create-react-app
RUN npm install -g create-react-app

# Copy shell script
COPY run.sh /
RUN chmod +x run.sh

# Mount a volume
VOLUME /var/my-app

EXPOSE 3000
CMD /run.sh
