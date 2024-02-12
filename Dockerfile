# Use the official NGINX base image
FROM nginx:latest

# Copy custom configuration file to NGINX configuration directory
COPY nginx.conf /etc/nginx/nginx.conf

# Copy static content (e.g., HTML, CSS, JS files) to NGINX default serving directory
COPY html /usr/share/nginx/html

# Expose port 80 to allow external access
EXPOSE 80

# Start NGINX server
CMD ["nginx", "-g", "daemon off;"]
