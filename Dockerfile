FROM alpine:latest as base

RUN apk add --upgrade nodejs \
  npm

COPY package* ./

RUN npm install

FROM base as test
COPY . .
RUN npm test

FROM base as production
COPY . .
CMD npm start