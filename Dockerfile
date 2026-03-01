FROM node:22

# Create app directory
# This will create the /app directory in the container if it doesn't exist, and it will be used as the working directory for the application.
RUN mkdir -p /app

# Set working directory
# This will set the working directory to /app, so all subsequent commands will be run in this directory. It also means that when the container starts, it will start in this directory.
WORKDIR /app

# Copy all files to the container (working directory)
COPY . .

# Install app dependencies
# It will run while building the image, so it will be ready to run when the container starts
RUN npm install

# Expose the port the app runs on
# This will make the container's port 5000 available to the host machine, allowing you to access the app from your browser or other tools on your local machine.
EXPOSE 5000

# Start the app (on development)
CMD ["npm", "run", "dev"]