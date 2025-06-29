FROM nginx:alpine

# Copy the application files to the nginx html directory
COPY /src/*.* /usr/share/nginx/html/
COPY peerspace.png /usr/share/nginx/html/
# Add any other static assets like CSS files if they are separate

# Configure nginx to handle Single Page Application routing (good practice)
RUN echo 'server { \
    listen 80; \
    server_name localhost; \
    root /usr/share/nginx/html; \
    index index.html; \
    location / { \
        try_files $uri $uri/ /index.html; \
    } \
}' > /etc/nginx/conf.d/default.conf

# Expose port 80 (nginx default)
EXPOSE 80

# Start nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
