# Use the official Nginx image from the Docker Hub
FROM nginx:latest

# Copy custom Nginx configuration file (optional)
# COPY nginx.conf /etc/nginx/nginx.conf

# Copy HTML files or your web app into the container
# Make sure you have an 'index.html' or other web content to serve
COPY ./html /usr/share/nginx/html

# Expose port 80 for web traffic
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
