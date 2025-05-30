# Use official Node.js LTS version as the base image
FROM node:18

# Set working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if present)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all source files to working directory
COPY . .

# Expose the port your app runs on (from your .env PORT or default 5004)
EXPOSE 5004

# Start the server
CMD ["npm", "start"]
