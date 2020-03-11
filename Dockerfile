FROM node:12.16-alpine

RUN apk add --no-cache bash

RUN mkdir -p /var/www

COPY ./src/package.json ./src/package-lock.json /var/www/

WORKDIR /var/www

RUN npm install -g live-server --no-progress

RUN npm install --no-optional --no-progress

COPY . .

EXPOSE 8181
