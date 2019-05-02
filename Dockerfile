# A Docker image is a template/collection of files, libraries and configuration files that build up an environment

#Start with a base image of node:10.15
FROM node:10.1

WORKDIR /usr/src/app

#COPY all of your application files to the WORKDIR in the container
COPY . /usr/src/app

#RUN a command to npm install your node_modules in the container

RUN npm install

#RUN a command to build your application in the container
RUN npm run build 

#EXPOSE your server port (3000) for when you are running in production
EXPOSE 3000

#Create an ENTRYPOINT where you'll run node ./server/server.js
ENTRYPOINT ["npm", "start"]