FROM node

COPY package.json .
COPY package-lock.json .
COPY main.js .
RUN npm cache clean --force && npm install
ENTRYPOINT ["node", "main.js"]
