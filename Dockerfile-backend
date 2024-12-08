# Use Node.js image
FROM node:18-alpine

# Set working directory inside the container
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy the rest of the backend code
COPY . .

# Expose port 5000 (or the port your backend uses)
EXPOSE 5000

# Start the backend server
CMD ["npm", "start"]

