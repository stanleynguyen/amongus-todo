FROM alpine:latest

RUN npm install

COPY . .

CMD npm start