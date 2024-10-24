FROM node:20

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

# Run the app in development mode
CMD ["npm", "run", "start:dev"]
