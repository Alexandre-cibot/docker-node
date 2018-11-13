FROM ubuntu

RUN apt-get update -y
RUN apt-get install npm -y
RUN apt-get install nodejs -y
RUN npm i -g yarn

WORKDIR /usr/src/app/

COPY ./* ./

RUN yarn

EXPOSE 3000

CMD ["node", "/usr/src/app/app.js"]