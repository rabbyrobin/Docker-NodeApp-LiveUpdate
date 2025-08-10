FROM node:18

# Create app directory
WORKDIR /app

# Install nodemon globally for auto-reload
RUN npm install -g nodemon

# Copy only package files first (for caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy source code (in normal build mode)
COPY . .

# Start app with nodemon (watch for changes)
CMD ["nodemon", "index.js"]
