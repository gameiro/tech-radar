# Use a Node.js base image
FROM node:latest

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and yarn.lock files to the working directory
COPY package.json yarn.lock ./

# Install dependencies using Yarn
RUN yarn

# Copy the entire project files to the working directory in the container
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Start the local development server when the container starts
CMD ["yarn", "start"]
