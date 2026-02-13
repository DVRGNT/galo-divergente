FROM nginx:alpine

# Apaga config padrão
RUN rm -f /etc/nginx/conf.d/default.conf

# Copia sua config
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copia o build do jogo
COPY . /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
