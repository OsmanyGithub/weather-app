# Official Node.js base image
FROM node:16-alpine

# Working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install dependecies
RUN npm install

# Copy the rest of the application
COPY . . 

# Expose the application port
EXPOSE 3000

# Command to run the application
CMD ["node", "server.js"]
