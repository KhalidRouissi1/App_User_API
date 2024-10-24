# Use Node.js 20
FROM node:20

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the source code
COPY . .

# Expose port (matching your NestJS port)
EXPOSE 3000

# Start the app
CMD ["npm", "run", "start:prod"]
