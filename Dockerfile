FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html
COPY estilos.css /usr/share/nginx/html/estilos.css
COPY imagenes/ /usr/share/nginx/html/imagenes/

EXPOSE 80