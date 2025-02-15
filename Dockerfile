FROM node:alpine

WORKDIR /app

COPY package.json ./
COPY package-lock.json ./
COPY ./src ./src
COPY ./public ./public

RUN npm i

CMD ["npm", "run", "start"]
