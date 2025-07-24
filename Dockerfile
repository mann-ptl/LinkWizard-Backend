From node:lts-alpine

RUN mkdir -p /home/node/LinkWizard-Backend && chown -R node:node /home/node/LinkWizard-Backend

WORKDIR /home/node/LinkWizard-Backend

COPY package* .json ./

USER node 

RUN npm install

COPY --chown=node:node

EXPOSE 8080

CMD ["node", "app.js"]
