# Use the official Node.js image as the base image
FROM node:14-slim

# Set environment variables to ensure that JBrowse serves assets correctly
ENV PUBLIC_PATH=http://0.0.0.0

# Set the working directory in the container
WORKDIR /usr/src/app

# Install the JBrowse CLI tool
RUN npm install -g @jbrowse/cli

# Create a JBrowse instance
RUN jbrowse create jbrowse2
WORKDIR /usr/src/app/jbrowse2

# Use the serve package to serve the application and handle symlinks
CMD [ "npx", "serve", "-S", "." ]
