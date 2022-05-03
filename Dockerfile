FROM node:alpine

RUN apk add --no-cache bash

RUN npm install -g npm@8.8.0
RUN npm install -g live-server --no-progress

# WORKDIR /var/www

# COPY ./app/package-lock.json /var/www
# COPY ./app/package.json /var/www

# RUN npm install -D tailwindcss

EXPOSE 9000
