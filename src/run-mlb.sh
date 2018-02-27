#!/bin/bash

export NODE_ENV=production 
export MONGOLAB_URI=mongodb://mongo-0.mongo,mongo-1.mongo,mongo-2.mongo:27017/MLB

cd /opt/src 

ls -al

npm install 

node app.js

#start mlb 
echo "started mlb"

exec "$@"