# Use the Nginx image as the base image
FROM nginx:alpine

# Copy the HTML file to the Nginx default directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to make the application accessible
EXPOSE 80

# Start Nginx when the container runs
CMD ["nginx", "-g", "daemon off;"]

