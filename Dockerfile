# Use the official Node.js image.
FROM node:16-alpine

# Set the working directory.
WORKDIR /app

# Copy package.json and package-lock.json.
COPY package.json yarn.lock ./

# Install dependencies.
RUN yarn install

# Copy the rest of the application code.
COPY . .

# Build the application.
RUN yarn build

# Expose the port the app runs on.
EXPOSE 3000

# Start the application.
CMD ["yarn", "start"]