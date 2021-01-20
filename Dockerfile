FROM node:14.15.4

ENV PORT 3000

WORKDIR /opt/docker-playground/

COPY package.json /opt/docker-playground/
COPY package-lock.json /opt/docker-playground/
COPY ./src /opt/docker-playground

RUN npm install

CMD ["npm", "start"]

