# Use the official Nginx image
FROM nginx:alpine

# Set working directory inside the container
WORKDIR /usr/share/nginx/html

# Remove default nginx static files
RUN rm -rf ./*

# Copy all files from current directory on host into nginx html folder
COPY . .

# Expose port 80 for web traffic
EXPOSE 80

# Start nginx (already configured in base image)
CMD ["nginx", "-g", "daemon off;"]
