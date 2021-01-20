FROM node:14.15.4-alpine

ENV PORT 3000

WORKDIR /opt/docker-playground/

COPY package.json /opt/docker-playground/
COPY package-lock.json /opt/docker-playground/
COPY ./src /opt/docker-playground/src

RUN npm install

CMD ["npm", "start"]

