#!/bin/bash

if [ ! -d /var/my-app ]; then
  cd /var
  create-react-app my-app
fi

cd /var/my-app

yarn

yarn add redux react-redux --save

yarn run start
