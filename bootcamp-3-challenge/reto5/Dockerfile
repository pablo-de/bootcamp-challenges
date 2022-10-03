FROM node:14-alpine

WORKDIR /usr/src/app

COPY /hello-bootcamp/* /usr/src/app/

RUN npm install

COPY hello-bootcamp/. .

EXPOSE 4000

CMD ["npm","start"]