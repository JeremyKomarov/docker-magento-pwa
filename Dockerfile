# Use the official Node.js image with Yarn pre-installed
FROM node:14

ENV MAGENTO_BACKEND_URL=https://jrstg.local/

# Set the working directory inside the container
WORKDIR /app

# Copy the application code from the host to the container
COPY app/ /app

# Install the application dependencies using Yarn
RUN yarn install

# Expose the required port(s) for your application (if necessary)
EXPOSE 1000

# Start your application (replace "start" with the actual command to start your app)
CMD ["tail", "-f", "/dev/null"]