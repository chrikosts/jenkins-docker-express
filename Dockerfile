# Build from alpine image that contains node installed
FROM node:current-alpine

LABEL org.opencontainers.image.title="Docker task" \
      org.opencontainers.image.description="Simple web application using Express framework" \
      org.opencontainers.image.authors="@chrikosts"

# Create directory in container image for app code
RUN mkdir -p /usr/src/app

# Copy app code (.) to /usr/src/app in container image
COPY . /usr/src/app

# Set working directory context
WORKDIR /usr/src/app

# Install dependencies from package.json
RUN npm install

# Command for container to execute
ENTRYPOINT [ "node", "app.js" ]