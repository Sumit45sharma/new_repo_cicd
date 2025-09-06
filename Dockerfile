# Use official Node.js image
FROM node:14

# Create app directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy app source code
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the app
CMD ["node", "app.js"]
