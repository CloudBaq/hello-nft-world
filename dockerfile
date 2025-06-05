# Official Node.js base image
FROM node:18-alpine

# Create working directory inside the container
WORKDIR /app

# Copy dependency files
COPY package*.json ./

# Install production dependencies
RUN npm install --only=production

# Copy the rest of the application files
COPY . .

# Expose the port (same as in app.js)
EXPOSE 3000

# Command to start the app
CMD ["npm", "start"]

