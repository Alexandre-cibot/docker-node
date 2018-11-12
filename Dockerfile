FROM ubuntu

RUN apt-get update -y
RUN apt-get install nodejs -y
RUN apt-get install npm -y

WORKDIR /usr/src/app/

COPY ./* ./

RUN npm install

EXPOSE 3000

CMD ["node", "/usr/src/app/app.js"]