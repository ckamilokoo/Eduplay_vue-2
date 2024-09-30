# Etapa de producción
FROM nginx:stable-alpine

# Copiar los archivos construidos a la carpeta de NGINX
COPY dist /usr/share/nginx/html

# Exponer el puerto 80
EXPOSE 80

# Comando para ejecutar NGINX en primer plano
CMD ["nginx", "-g", "daemon off;"]
