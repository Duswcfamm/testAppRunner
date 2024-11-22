# Use a lightweight Nginx image as the base
FROM nginx:alpine

# Copy your website files to the Nginx default directory
COPY ./website /usr/share/nginx/html

# Expose the Nginx port
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]