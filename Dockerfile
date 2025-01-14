# Build stage
FROM node:18 AS build

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy the rest of the app and build
COPY . ./
RUN npm run build

# Final step: Copy build files to a mounted volume
CMD cp -r /app/dist/* /output