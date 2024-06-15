FROM node:16

workdir /app

COPY package.json .

RUN npm install

COPY server.js .

CMD ["node","server.js"]
