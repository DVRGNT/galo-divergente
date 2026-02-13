FROM nginx:alpine

# Remove config default
RUN rm /etc/nginx/conf.d/default.conf

# Copia build do Unity
COPY Build /usr/share/nginx/html

# Config nginx
COPY nginx.conf /etc/nginx/conf.d

EXPOSE 80
