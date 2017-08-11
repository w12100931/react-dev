#!/bin/bash
if [ ! -d /app/my-app ]; then
  cd /app
  create-react-app my-app
fi

cd /app/my-app
yarn
yarn run start
