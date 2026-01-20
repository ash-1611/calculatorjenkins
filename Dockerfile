FROM nginx:latest

# Remove default nginx files
RUN rm -rf /usr/share/nginx/html/*

# Copy calculator files into nginx
COPY . /usr/share/nginx/html/

EXPOSE 80
