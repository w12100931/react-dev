#!/bin/bash

if [ ! -d /$APP_NAME ]; then
  create-react-app $APP_NAME
fi

cd /$APP_NAME

npm install
npm install -save redux
npm install -save react-redux

npm start
