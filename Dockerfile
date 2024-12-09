# Step 1: Use Nginx as the base image
FROM nginx:latest

# Step 2: Copy the index.html and styles.css to the Nginx HTML directory
COPY ./index.html /usr/share/nginx/html/
COPY ./styles.css /usr/share/nginx/html/

# Step 3: Expose port 80 for Nginx
EXPOSE 80

# Step 4: Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
