# Use a more recent Node.js image that supports ARM64
FROM node:16-slim

# Set environment variables
ENV PUBLIC_PATH=http://0.0.0.0

# Set the working directory
WORKDIR /usr/src/app

# Install necessary dependencies
RUN apt-get update && apt-get install -y git python3 make g++

# Install the JBrowse CLI tool
RUN npm install -g @jbrowse/cli

# Create a JBrowse instance
RUN jbrowse create jbrowse2

WORKDIR /usr/src/app/jbrowse2

# Create data directory
RUN mkdir -p data

# Expose port 3000
EXPOSE 3000

# Use the serve package to serve the application
CMD [ "npx", "serve", "-S", "." ]