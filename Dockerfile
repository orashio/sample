FROM node:10

WORKDIR /home/node/app
COPY sample-app /home/node/app
RUN chown -R node:node /home/node/app

USER node
RUN npm install
ENV NODE_ENV=production
CMD node /home/node/app/app.js
