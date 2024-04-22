# Use an official Nginx runtime as the base image
FROM nginx:alpine

# Copy HTML, CSS, and JavaScript files to the Nginx HTML directory
COPY index.html /usr/share/nginx/html

# Expose port 80 to allow outside access to the container
EXPOSE 80
