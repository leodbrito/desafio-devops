FROM nginx:alpine

COPY nginx /usr/share/nginx/html

COPY desafio.conf /etc/nginx/conf.d