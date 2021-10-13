FROM alpine:latest

RUN apk add --upgrade nodejs \
  npm

COPY package* ./

RUN npm install

COPY . .

CMD npm start