FROM nginxinc/nginx-unprivileged:1.25-alpine3.18-slim

# Copy your NGINX config
COPY nginx-default.conf /etc/nginx/conf.d/default.conf

# Copy only the browser build output
COPY dist/my-app/browser/ /usr/share/nginx/html

# Run NGINX
CMD ["nginx", "-g", "daemon off;"]
