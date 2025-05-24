FROM nginx:alpine

# Copy the application files to the nginx html directory
COPY index.html /usr/share/nginx/html/
COPY main.js /usr/share/nginx/html/
COPY share.js /usr/share/nginx/html/
COPY media.js /usr/share/nginx/html/
COPY whiteboard.js /usr/share/nginx/html/
COPY kanban.js /usr/share/nginx/html/
COPY document.js /usr/share/nginx/html/
COPY trystero-torrent.min.js /usr/share/nginx/html/
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
