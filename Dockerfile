FROM raspbian/stretch:latest

WORKDIR /app

RUN apt-get -y update
RUN apt-get install -y curl alsa-utils
# Install NodeJS
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y nodejs

# Install NPM Services

COPY /src/package.json .

RUN npm install
#  node-red node-red-dashboard 

# RUN npm install node-red-node-mongodb

EXPOSE 1880

CMD ["pm2", "start", "node-red", "-v"]
