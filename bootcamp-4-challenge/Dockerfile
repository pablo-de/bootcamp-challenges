FROM ubuntu:18.04

RUN apt-get update
RUN apt-get -y install curl gnupg
RUN curl -sL https://deb.nodesource.com/setup_16.x  | bash -
RUN apt-get -y install nodejs

WORKDIR /home/node/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8888

CMD ["npm", "start"]
