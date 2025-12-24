
# Use official Node.js 18 slim image
FROM node:18.20.8-slim

# Set working directory inside the container
WORKDIR /RME-Server

# Create report output directory
RUN mkdir -p /RME-Server/report_output

# Copy package.json and package-lock.json first (for caching)
COPY package*.json ./

# Install Node.js dependencies
RUN npm install

# Copy the rest of the application code
COPY . ./

# Default command: open shell, can override with node scripts
CMD ["sh"]
