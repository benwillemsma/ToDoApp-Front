FROM node:14.17.6
RUN apt-get update -y
WORKDIR /myapp

RUN npm install -g ember-cli@3.28.0
EXPOSE 4200

Copy . /myapp
RUN npm install

CMD ember server --proxy $PROXY_URL