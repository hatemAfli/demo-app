
# use an official Node.js base image
FROM node:18-alpine

# set working directory inside the container
WORKDIR /app

# copy package files and install dependencies
COPY package*.json ./
RUN npm install

# copy the rest of your app files
COPY . .

# Define the port your app runs on(optional, for docs)
EXPOSE 3000

# Command to run your app
CMD [ "npm", "start" ]