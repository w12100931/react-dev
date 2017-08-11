#!/bin/bash

cd var

if [ ! -d /my-app ]; then
  create-react-app my-app
fi

cd my-app

npm install
npm install -save redux
npm install -save react-redux

npm start
