# Use the official lightweight Nginx image from Alpine Linux
FROM nginx:alpine

# Copy the custom nginx config for CORS support
COPY default.conf /etc/nginx/conf.d/default.conf

# Copy all files from the current directory to the Nginx html directory
COPY . /usr/share/nginx/html

# Expose port 80 (Nginx listens on 80 by default)
EXPOSE 80
