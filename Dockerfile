FROM alpine:latest

RUN apt-get update && apt-get upgrade -y && \
  apt-get install -y nodejs \
  npm

COPY package* ./

RUN npm install

COPY . .

CMD npm start