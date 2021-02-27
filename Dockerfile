FROM node:12.13.0-alpine

EXPOSE 1880

RUN npm install node-red

RUN npm install node-red-dashboard && npm install node-red-node-mongodb
