FROM node:10-alpine
#FROM nodeshift/centos7-s2i-nodejs:latest
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD [ "node", "server.js" ]
