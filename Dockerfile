FROM node:18

WORKDIR /usr/src/app

ENV DB_HOST dummy
ENV DB_USER dummy
ENV DB_PASSWORD dummy
ENV DB_PORT 3567 dummy

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 8080

CMD [ "node", "server.js" ]
