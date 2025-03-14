# Use the official Node.js image as the base image
FROM node:18-alpine AS build

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json to install dependencies
COPY package*.json ./

# Install dependencies
RUN npm install -g @angular/cli && npm install

# Copy the rest of the application code
COPY . .

# Expose the default Angular port
EXPOSE 4200
