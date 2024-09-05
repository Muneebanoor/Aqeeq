# Use the official Nginx image as the base
FROM nginx:alpine

# Remove the default Nginx HTML content
RUN rm -rf /usr/share/nginx/html/*

# Copy the static files (index.html and styles.css) to the Nginx directory
COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY /assets     /usr/share/nginx/html/assets

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
