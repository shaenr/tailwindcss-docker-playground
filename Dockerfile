FROM node:12.16-alpine

RUN apk update && apk upgrade

RUN apk add --update nodejs npm

RUN mkdir -p /var/www

COPY ./src/package.json /var/www

WORKDIR /var/www

RUN npm install

EXPOSE 8181

CMD ["/var/www/public", "--no-browser", "--port=8181"]
