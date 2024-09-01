# Dockerfile for book_catalog microservice
# Use an official Node.js runtime as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the dependencies specified in package.json
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Expose port 3000 to the host machine
EXPOSE 3000

# Define the command to run your application
CMD ["npm", "start"]