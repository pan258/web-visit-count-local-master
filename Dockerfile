FROM alpine:3.16.0

RUN apk add nodejs
RUN apk add npm

WORKDIR '/app'

COPY package.json .
RUN npm install
COPY index.js .

CMD ["npm", "start"]
