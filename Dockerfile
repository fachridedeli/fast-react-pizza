FROM node:18-alpine

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

RUN npm i -g serve

RUN npm run build

EXPOSE 9001

CMD [ "serve", "-s", "dist", "-l", "9001" ]