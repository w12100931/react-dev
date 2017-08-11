#!/bin/bash

if [ ! -d /var/my-app ]; then
  cd /var
  create-react-app my-app
fi

cd /var/my-app

npm install
npm install -save redux
npm install -save react-redux

npm start
