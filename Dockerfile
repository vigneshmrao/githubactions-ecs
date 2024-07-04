# Use Node.js base image from DockerHub
FROM node:14

# Set working directory
WORKDIR /app

# Install app dependencies
COPY . .
RUN npm install

# Copy app source code
COPY . .

# Build the app
RUN npm run build

# Expose the app port
EXPOSE 80

# Start the app
CMD ["npm", "start"]
