# Use an official Nginx image
FROM nginx:latest

# Remove the default Nginx website
RUN rm -rf /usr/share/nginx/html/*

# Copy your static website files to Nginx's HTML directory
COPY static /usr/share/nginx/html

# Expose port 80 for the web server
EXPOSE 80